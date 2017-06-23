function onClickLoginBtn()
{
    $("#modalReg").modal("show");
}

function onClickRegBtn()
{
   
    $("#regForm").hide();
    $("#confirmForm").show();
    $("#modalLogin").modal("show");
    $("#confirmForm")[0].reset();
    $("#regForm")[0].reset();
}




$(document).ready(function () {


    $("#confirmForm").find("input").keyup(function (e) {
        var code = e.which; // recommended to use e.which, it's normalized across browsers
        if (code == 13) e.preventDefault();
        if (code == 32 || code == 13 || code == 188 || code == 186) {
            onClickValidateAC();
        } // missing closing if brace
    });


    $("#regForm").find("input").keyup(function (e) {
        var code = e.which; // recommended to use e.which, it's normalized across browsers
        if (code == 13) e.preventDefault();
        if (code == 32 || code == 13 || code == 188 || code == 186) {
            onClickRegister();
        } // missing closing if brace
    });

    $("#lgform").find("input").keyup(function (e) {
        var code = e.which; // recommended to use e.which, it's normalized across browsers
        if (code == 13) e.preventDefault();
        if (code == 32 || code == 13 || code == 188 || code == 186) {
            onClickLogin();
        } // missing closing if brace
    });


    $("#ffrorm").find("input").keyup(function (e) {
        var code = e.which; // recommended to use e.which, it's normalized across browsers
        if (code == 13) e.preventDefault();
        if (code == 32 || code == 13 || code == 188 || code == 186) {
            onClickForgotPass();
        } // missing closing if brace
    });
    


});




function onClickRegister() {
    var ab = new alertbox();
    ab.id = "#regMsg";

   
    if ($("#txtFName").val() == "") {
        ab.showError('Please enter your first name.');
        return;
    }
    if ($("#txtLName").val() == "") {
        ab.showError('Please enter your last name.');
        return;
    }
    if ($("#txtSpec").val() == "") {
        ab.showError('Speciality should not be empty.');
        return;
    }
   
    if ($("#ddCountry :selected").val() == "0") {
        ab.showError('Please select your country.');
        return;
    }

    //if ($("#ddGender :selected").val() == "0") {
    //    ab.showError('Please select your gender.');
    //    return;
    //}

    if ($("#txthospital :selected").val() == "0") {
        ab.showError('Please enter valid Affiliation.');
        return;
    }
    if ($("#txtEmail").val() == "") {
        ab.showError('Please enter your email.');
        return;
    }

    if (!validateEmail($("#txtEmail").val())) {
        ab.showError('Please enter valid email.');
        return;
    }

  

    if ($("#txtPass").val() == "") {
        ab.showError('Please enter password.');
        return;
    }

    if ($("#txtCPass").val() == "") {
        ab.showError('Please enter confirm password.');
        return;
    }

    if (!validatePass($("#txtPass").val()) || !validatePass($("#txtPass").val())) {
        ab.showError('Password should have minimum 8 character.');
        return;
    }



    if ($("#txtPass").val() != $("#txtCPass").val()) {
        ab.showError('Password does not match with each other.');
        return;
    }



    if (!$("#chkTerms").is(":checked")) {
        ab.showError('Please accept terms and conditions to proceed.');
        return;
    }


    var ud = new User();
    ud.email = $("#txtEmail").val();
    ud.password = $("#txtPass").val().toLowerCase();
    ud.firstname = $("#txtFName").val();
    ud.lastname = $("#txtLName").val();
    ud.title = $("#ddTitle").val();
    ud.speciality = $("#txtSpec").val();
    ud.country = $("#ddCountry").val();
    ud.city = $("#txtCity").val();
    ud.phonenumber = $("#txtPNo").val();
    ud.firstaddress = $("#txtFAdd").val();
    ud.secondaddress = $("#txtLAdd").val();

    var st = g_UserService.getUserByEmail(ud, false, "").Result;
    if (st.status) {
        ab.showError('Email already registered.');
        return;
    }


    g_UserService.RegisterUser(ud, true, "onCreatedProfile");
    blockUI("body");

}

function onCreatedProfile(res) {
    var ab = new alertbox();
    ab.id = "#regMsg";

    if (res.status) {
        ab.showSuccess('Registration Successful.');
        window.setTimeout(function () { $(ab.id).html(""); }, 10000);
        $('#regForm')[0].reset();
    }
    else {
        ab.showError('Something went wrong.');
    }

    unblockUI("body");
}

function onClickLogin() {
    var ab = new alertbox();
    ab.id = "#lgMsg";


    if ($("#txtUName").val() == "") {
        ab.showError('Please enter your email.');
        return;
    }

    if (!validateEmail($("#txtUName").val())) {
        ab.showError('Please enter valid email address.');
        return;
    }

    if ($("#txtLPass").val() == "") {
        ab.showError('Please enter your password.');
        return;
    }

    var ud = new User();
    ud.email = $("#txtUName").val();
    ud.password = $("#txtLPass").val().toLowerCase();

    g_UserService.AuthenticateUser(ud, true, "onLoggedIn");
    blockUI("body");
}

function onLoggedIn(res) {
    var ab = new alertbox();
    ab.id = "#lgMsg";
    if (res.status) {
            $('#regForm')[0].reset();
            window.location.href = "home.aspx";
    }
    else {
        ab.showError(res.message);
    }

    unblockUI("body");
}

function onClickForgotPass() {
    var ab = new alertbox();
    ab.id = "#fpMsg";


    if ($("#txtFUName").val() == "") {
        ab.showError('Please enter your email');
        return;
    }

    if (!validateEmail($("#txtFUName").val())) {
        ab.showError('Please enter valid email address.');
        return;
    }

    var ud = new User();
    ud.email = $("#txtFUName").val();

    g_UserService.forgotPassword(ud, true, "onForgotPass");
    blockUI("body");
}

function onForgotPass(res, cb) {
    var ab = new alertbox();
    ab.id = "#fpMsg";
    if (res) {
        ab.showSuccess('Forgot password reset link is sent to your email, please check.');
        window.setTimeout(function () { $(ab.id).html("") }, 5000);
    }
    else {
        ab.showError('Please enter valid email address.');
    }

    unblockUI("body");
}

function onClickValidateAC() {
    var ab = new alertbox();
    ab.id = "#accMsg";

    if ($("#txtACode").val() == "") {
        ab.showError('Please enter Access code.');
        return;
    }

    if ($("#txtACode").val().toLowerCase() == "mhs2016") {
        $(ab.id).html("");
        $("#confirmForm").fadeOut("fast", function () {
            $("#regForm").show();
        })
    }
    else {
        ab.showError('Please enter valid Access code.');
    }

}

function onClickResetPass() {
    var ab = new alertbox();
    ab.id = "#rpMsg";


    if ($("#txtPass").val() == "") {
        ab.showError('Please enter password.');
        return;
    }

    if ($("#txtCPass").val() == "") {
        ab.showError('Please enter confirm password.');
        return;
    }

    if (!validatePass($("#txtPass").val()) || !validatePass($("#txtPass").val())) {
        ab.showError('Password should have minimum 8 character.');
        return;
    }

    if ($("#txtPass").val() != $("#txtCPass").val()) {
        ab.showError('These passwords dont match. Try again?');
        return;
    }

    var ud = new User();
    ud.referencecode = $("#hdnRefCode").val();
    ud.password = $("#txtPass").val().toLowerCase();

    g_UserService.setPassword(ud, true, "onSettedPassword");
    blockUI("#centerContainer");
}

function onSettedPassword(res, cb) {
    if (res.userid > 0) {
        $("#resetDiv").hide();
        $("#successDiv").show();
    }

    unblockUI("#centerContainer");
}


function closeModal()
{
    $('#logoDiv').css("display", "block");
}
