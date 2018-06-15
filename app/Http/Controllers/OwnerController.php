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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Owner $owner
     * @return \Illuminate\Http\Response
     */
    public function save(Request $request)
    {
        $category = Session::get('model');
        $data = $request->all();
        if (isset($data['_token'])) unset($data['_token']);
        $key = md5(uniqid(rand(), 1));
        $unique_key = $category . '~*' . $key;
        $data['unique_key'] = $unique_key;
        $data['status'] = 'draft';
        $data['slug'] = Str::slug($data['title_en']);
        DB::table($category)
            ->insert($data);
        return redirect()->back()->with('complete', ['complete registration']);
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
        foreach($categoryList as &$category) {
            if(in_array($category->slug, self::CATEGORY_UNSET)){
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
        return view('ownertemplates.ownercreate', compact('columns', 'tags', 'locale'));
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
        }catch (QueryException $e){
            return redirect()->back()->with('message','Така пошта та ключ не привʼязані до жодного обʼєкту');
        }

        if($objectInfo == null){
            return redirect()->back()->with('message','Така пошта та ключ не привʼязані до жодного обʼєкту');
        }

        $tags = Tag::where('category_name', '=', $queryModel)->get();
        foreach (self::PROP_UNSET as $prop) {
            if (isset($objectInfo->$prop)) unset($objectInfo->$prop);
        }
        Session::put('model', $queryModel);
//dd($objectInfo);
        return view('ownertemplates.ownerregistration', compact('model', 'objectInfo', 'tags', 'locale'));
    }
}
