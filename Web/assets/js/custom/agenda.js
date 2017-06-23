function onShowAgenda2() {
    $("#aday1").animate({
        top:"-100%"
    },1000, function () {
        $("#aday1").css({ "position": "relative", "top": "0px", "z-index": "0" });
        $("#aday2").css({ "position": "absolute", "top": "0px", "z-index":"1" });
    });
    $(".Adet").hide();
    $("#adayd2").show();
}

function onShowAgenda1() {
    $("#aday2").animate({
        top: "-100%"
    }, 1000, function () {
        $("#aday2").css({ "position": "relative", "top": "0px", "z-index": "0" });
        $("#aday1").css({ "position": "absolute", "top": "0px", "z-index": "1" });
    });

    $(".Adet").hide();
    $("#adayd1").show();

}


function onShowAgenda3() {

}