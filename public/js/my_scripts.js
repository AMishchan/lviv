"use strict";

// function progress() {
//     var block = $(".dws-progress-bar");
//     block.circularProgress({
//         color: "#FE9700",
//         line_width: 2,
//         height: "35px",
//         width: "35px",
//         percent: 0,
//         starting_position: 100
//     }).circularProgress('animate', 90, 2000);
// }

function star_on() {
    $('.box_all').mouseover(function () {

        var blockHide = $(this).find('.js-text');
        blockHide.css('display', 'none');
        $(this).find('.js-text2').css('bottom', '70%');
    });
    /*document.getElementById('text').style.display = 'none';
    document.getElementById('text2').style.bottom = '70%';*/
}
function star_off() {
    $('.box_all').mouseout(function () {

        var blockHide = $(this).find('.js-text');
        blockHide.css('display', 'block');
        $(this).find('.js-text2').css('bottom', '0');
    });
}

$(document).ready(function () {
    star_on();
    star_off();
    progress();
});

var ctx = document.getElementsByClassName('my_canvas').getContext('2d');
var al = 0;
var start = 4.72;
var cw = ctx.canvas.width;
var ch = ctx.canvas.height;
var diff;
function progressSim(){
    diff = ((al / 100) * Math.PI*2*10).toFixed(2);
    ctx.clearRect(0, 0, cw, ch);
    ctx.lineWidth = 2;
    ctx.fillStyle = '#FE9700';
    ctx.strokeStyle = "#FE9700";
    ctx.textAlign = 'center';
    ctx.fillText('★', cw*.5, ch*.5+3, cw);
    ctx.beginPath();
    ctx.arc(15, 15, 10, start, diff/10+start, false);
    ctx.stroke();
    // тут мы 100 меняем на любое значение
    if(al >= 100){

        clearTimeout(sim);
        // Add scripting here that will run when progress completes
    }
    al++;
}
var sim = setInterval(progressSim, 10);