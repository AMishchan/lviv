<?php

namespace App\Http\Controllers;

use App\Museum;
use App\Owner;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Mockery\Exception;
use Psr\Log\InvalidArgumentException;
use TCG\Voyager\Models\Category as CategorySelect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use App\Tag;
use Illuminate\Support\Str;


class OwnerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    const PROP_UNSET = [   //arr for deleting properties  in regist or ediding owner view
        'unique_key',
        'gid_id',
        'id',
        'slug',
        'status',
        'created_at',
        'updated_at'
    ];
    const CATEGORY_UNSET = [
        'excursions',
        'concerts',

    ];

    public function owner()
    {
        return view('owner');
    }

    public function index()
    {


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $model = Session::get('model');
        $data = $request->all();
        if (isset($data['_token'])) unset($data['_token']);
        $data['created_at'] = 1;
        DB::table($model)
            ->update($data);
        return redirect()->back()->with('complete', ['complete updating']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Owner $owner
     * @return \Illuminate\Http\Response
     */
    public function show(Owner $owner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Owner $owner
     * @return \Illuminate\Http\Response
     */
    public function edit(Owner $owner)
    {
        //
    }

    public function geometryInsert($object_id, $tag, $category, $geometry)
    {

            $data['tag'] = $tag;
            $data['category'] = $category;
            $data['object_id'] = $object_id;
            $data['geometry'] = $geometry;
            DB::table('google_geometry')
                ->insert($data);


    }

    public function reviewInsert($gooleReviews, $category,$object_id,$tag)
    {

        foreach ($gooleReviews as $review) {
            $review['tag'] = $tag;
            $review['category'] = $category;
            $review['object_id'] = $object_id;
            DB::table('google_reviews')
                ->insert($review);

        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Owner $owner
     * @return \Illuminate\Http\Response
     */
    public function save(Request $request, $model)
    {
        $category = Session::get('model') ?? $model;
        $data = $request->all();

        if (isset($data['_token'])) unset($data['_token']);

        $key = md5(uniqid(rand(), 1));
        $unique_key = $category . '~*' . $key;
        $data['unique_key'] = $unique_key;
        $data['status'] = 'draft';
        $data['slug'] = Str::slug($data['title']);
        $tag = $data['tag'];
        DB::table($category)
            ->insert($data);
        $object_id = DB::select("select last_insert_id() from $category")[0];
      //  dd($object_id);
        try {
            $objJson = file_get_contents("https://maps.googleapis.com/maps/api/place/details/json?key=AIzaSyCmUcVn8v4mHdwIZKHjc1yvMhkqHU597go&placeid={$data['google_place_id']}");
            $googleInfo = json_decode($objJson);
        }catch (Exception $e){
            return redirect()->back()->with('message', 'connection_failed');
        }
        if ($googleInfo->status !== 'OK') {

            return redirect()->back()->with('message1', 'Incorrect_Goole_Place_ID');

        } else {
            $result = $googleInfo->result;
            dd(json_encode($result));
            $gooleReviews = $result->reviews ?? 'null';
            $gooleReviews = json_decode(json_encode($gooleReviews), True);
            $object_id = json_decode(json_encode($object_id), True)['last_insert_id()'];
            $geometry = json_encode($result->geometry);

            $this->reviewInsert($gooleReviews, $category,$object_id, $tag);
            $this->geometryInsert($object_id, $tag, $category, $geometry);
        }

        return redirect()
            ->back()
            ->with('complete', ['complete registration']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Owner $owner
     * @return \Illuminate\Http\Response
     */
    public function destroy(Owner $owner)
    {
        $owner->delete();
        return redirect('/');
    }

    public function categorySelect()
    {
        $categoryList = CategorySelect::all();
        foreach ($categoryList as &$category) {
            if (in_array($category->slug, self::CATEGORY_UNSET)) {
                $category->__unset('slug');
            }
        }
        return view('ownerCategorySelect', compact('categoryList', 'locale'));
    }

    public function ownerObjectCreate($category)
    {
        $locale = Session::get('locale');
        $tags = Tag::where('category_name', '=', $category)->get();
        $columns = Schema::getColumnListing($category);
        foreach (self::PROP_UNSET as $prop) {
            $key = array_search($prop, $columns);
            if ((array_search($prop, $columns)) == !false) $key;
            unset($columns[$key]);
        }
        Session::put('model', $category);
        return view('ownertemplates.ownercreate', compact('category', 'columns', 'tags', 'locale'));
    }

    public function ownerObjectUpdate(Request $request)
    {
        $unique_key = $request->key;
        $credentials = explode('~*', $unique_key);
        $queryModel = $credentials[0];
        $email = $request->email;

        try {
            $objectInfo = DB::table($queryModel)
                ->where('owner_email', $email)
                ->where('unique_key', $unique_key)
                ->get()
                ->first();
        } catch (QueryException $e) {
            return redirect()->back()->with('message', 'Така пошта та ключ не привʼязані до жодного обʼєкту');
        }

        if ($objectInfo == null) {
            return redirect()->back()->with('message', 'Така пошта та ключ не привʼязані до жодного обʼєкту');
        }

        $tags = Tag::where('category_name', '=', $queryModel)->get();
        foreach (self::PROP_UNSET as $prop) {
            if (isset($objectInfo->$prop)) unset($objectInfo->$prop);
        }
        Session::put('model', $queryModel);

        return view('ownertemplates.ownerregistration', compact('model', 'objectInfo', 'tags', 'locale'));
    }
}
