$(document).ready(function () {
    var div = document.createElement("div");
    div.innerHTML = "<!--[if lt IE 10]><i></i><![endif]-->";
    var isIeLessThan10 = (div.getElementsByTagName("i").length == 1);
    if (isIeLessThan10) {
        alert("This site is best viewed in Internet Explorer 10 and above");
        return;
    }

    $('.no-menu-modal').on('show.bs.modal', function () {
        $('#city-toggle').hide();
        $('html').css('overflow-y', 'hidden');
    });

    $('.no-menu-modal').on('hide.bs.modal', function () {
        $('#city-toggle').show();
        $('html').css('overflow-y', 'auto');
    });

   // setTimeout(function () {
   //     var banner = parseInt(sessionStorage.getItem("banner-shown"));
   //     var stopDate = new Date("May 4, 2016 18:00:00");
    //    if (banner != 1 && (new Date() <= stopDate)) {
   //         $('#modal-banner').modal('show');
   //         sessionStorage.setItem("banner-shown", 1);
  //      }
  //  }, 2000);
});
