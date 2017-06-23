

var isAndroid = /android/i.test(navigator.userAgent.toLowerCase());

if (isAndroid) {
    //$('body').css('font-family', 'ArialNarrow');
}

function blockUI(ele) {
    $(ele).prepend("<div class='blockUI'><img src='assets/images/loader1.gif'></div>");
}

function unblockUI(ele) {
    $(ele).find('.blockUI').fadeOut("slow", function () { $(this).remove(); });
}

function alertbox() {
    this.id = "";
}

alertbox.prototype.showError = function (message) {
    $(this.id).html("<div class='error'>" + message + "</div>");
}

alertbox.prototype.showSuccess = function (message) {
    $(this.id).html("<div class='success'>" + message + "</div>");
}

function onClickContactus() {
    var ab = new alertbox();
    ab.id = "#cuMsg";


    if ($("#ddftype :selected").val() == "0") {
        ab.showError('Please enter your email.');
        return;
    }
    if ($("#cemail").val() == "") {
        ab.showError('Email should not be empty.');
        return;
    }

    if (!validateEmail($("#cemail").val())) {
        ab.showError('Invalid email address.');
        return;
    }

    if ($("#cdesc").val() == "") {
        ab.showError('Description should not be empty.');
        return;
    }

    var cs = new Contactus();
    cs.contacttype = $("#ddftype").val();
    cs.contactemail = $("#cemail").val();
    cs.description = $("#cdesc").val().replace(/\n|\r\n|\r/g, "<br>");;

    g_UserService.ContactUS(cs, true, "onContactedus");
    blockUI("#contactForm");
}

function onContactedus(res, cb) {

    var ab = new alertbox();
    ab.id = "#cuMsg";

    if (res.status) {
        ab.showSuccess('Your message has been submitted successfully.');
        window.setTimeout(function () { $(ab.id).html(""); }, 5000);
        $('#contactForm')[0].reset();
    }
    else {
        ab.showError('Something went wrong.');
    }

    unblockUI("#contactForm");
}


function showDescription(id) {
    hideDescription();
    $('#' + id).slideDown();
    $('#' + id + '_img').fadeIn();
}

function hideDescription() {
    $('.desc-div-img').fadeOut();
    $('.desc-div').slideUp();
}

function showPreRead() {
    window.location.href = 'PreRead.aspx';
}

function openSurveyModal() {
    for (var index = 1; index <= 5; index++) {
        $('#modal-survey').find('input[name="surveyQuestion' + index + '"]:checked').each(function () {
            $(this).prop('checked', false);
        });
    }
    $('#textbox1').val('');
    $('#sErrMsg').html('');

    $('#modal-survey').modal('show');
}

function onClickSurveyOption(element) {
    var data = new Feedback();
    data.QuestionId = parseInt(element.getAttribute("questionid"));
    data.Answer = parseInt(element.getAttribute("value"));
     g_UserService.SubmitWebsiteFeedback(data, false, "");
}

function submitFeedback() {
    var data = new Feedback();
    var feedbacks = [];
    var ab = new alertbox();
    var a = document.getElementById('textbox1').value;
    ab.id = "#sErrMsg";

    for (var index = 1; index <= 5; index++) {
        $('#modal-survey').find('input[name="surveyQuestion' + index + '"]:checked').each(function () {
            feedbacks.push($(this).val());
        });
    }

    if (a == "") {
        ab.showError('* All questions are required');
        return;
    }

    if (feedbacks.length == 5) {
        ab.showSuccess('Feedback submitted successfully');
    }
    else {
        ab.showError('* All questions are required');
    }
    data.Answer = document.getElementById('textbox1').value;
    data.QuestionId = document.getElementById('textbox1').getAttribute('questionid');
    g_UserService.SubmitWebsiteFeedback(data, false, "");
}

function showVideo(videoTitle, videoNumber) {
    $('#video-title').html(videoTitle);
    $('#modal-highlights').find('.modal-body').html('<video style="width: 100%;" controls><source src="assets/videos/Video' + videoNumber + '.mp4" type="video/mp4" /></video>');
    window.setTimeout(function () {
        $('#modal-highlights').modal('show');
    }, 800);
}

function removeVideo() {
    $('#modal-highlights').find('.modal-body').html('');

}


function showMap() {

    //window.location.href = ("https://www.google.co.in/maps/place/Crowne+Plaza+Dubai+-+Festival+City/@25.223904,55.349261,15z/data=!4m2!3m1!1s0x0:0x500787de98cfb807");
    window.open("https://www.google.co.in/maps/place/Crowne+Plaza+Dubai+-+Festival+City/@25.223904,55.349261,15z/data=!4m2!3m1!1s0x0:0x500787de98cfb807");
}
function showLogistic() {
    location.href = "Logistic.aspx";
}

function showExitModal() {
    var a = $(document).width();
    if (a == 667 || a == 736 || a == 568 || a == 480) {
        $('#exitPromptModal').parent().find('.modal-content').css("margin-top", "20%");
    }
    $('#exitPromptModal').show();
    $('.fade').css('opacity', '1');
}


function onclickLogout() {
//    sessionStorage.setItem("banner-shown", 0);
    location.href = "Default.aspx?Type=logout";
}


function hideExitModal() {
    $('#exitPromptModal').hide();
}



function OnclickContact() {
    $('#modal-contact').modal('show');
    $('#btncnt').css("opacity", "1");
}


function Onclickonlinecme() {
    $('#onlinecme').show();
    $('.fade').css('opacity', '1');
}

function Onclickviewwebcast()
{
    $('#viewwebcast').show();
    $('.fade').css('opacity', '1');
}


function OnclickFaq() {
    $('#modal-faq').modal('show');
    $('#btncnt').css("opacity", "1");
}

function onclickPreread() {
    window.location.href = "PreRead.aspx"
}

function onclickLogistic() {
    window.location.href = "Logistic.aspx"
}

function onclickCromplaz() {
    window.open("http://www.crowneplaza.com/");
}


function onclickWebcast() {
    window.location.href = "Webcast.aspx"
}

function tab(ele) {
    $('.prefirstdiv').css({
        'background-color': '#a11c1c',
        'color': '#fff'
    });
    $('.displaydiv').css({
        'display': 'none',
    });
    if (ele == "1") {
        $('#cml').css({
            'background-color': '#fff',
            'color': '#a11c1c'
        });
        $('#cml_div').css({
            'display': 'block',
        });
    }
    if (ele == "2") {
        $('#iol').css({
            'background-color': '#fff',
            'color': '#a11c1c'
        });
        $('#iol_div').css({
            'display': 'block',
        });
    }
    if (ele == "3") {
        $('#itp').css({
            'background-color': '#fff',
            'color': '#a11c1c'
        });
        $('#itp_div').css({
            'display': 'block',
        });
    }
    if (ele == "4") {
        $('#mf').css({
            'background-color': '#fff',
            'color': '#a11c1c'
        });
        $('#mf_div').css({
            'display': 'block',
        });
    }
    if (ele == "5") {
        $('#pv').css({
            'background-color': '#fff',
            'color': '#a11c1c'
        });
        $('#pv_div').css({
            'display': 'block',
        });
    }
}





function askConf(link) {
    $("#modalConf").modal("show");
    $("#modalConf").find("a").attr("href", link);
}

function onloadWebcast() {
    // var b = document.getElementById('homeBody').style.width;
    var a = $('#homeBody').css("width");
    if (a == "414px" || a == "320px" || a == "360px" || a == "375px" || a == "568px" || a== "667px" || a== "736px") {
        $('#webcst').css("width", "100%");
        $('#webcst').css("float", "none");
    }

    if(a == "1024px")
    {
        $('.footer').css("height", "100px");
        $('#nLogoFooter').css("top", "50px");
    }
}


function togglePreread(ele) {

    var A = ele.childNodes[1].className;

    if (A == "Pre_Txt_Open") {
        ele.childNodes[1].className = "Pre_Txt_Close";
    }
    else {
        ele.childNodes[1].className = "Pre_Txt_Open";
    }
}