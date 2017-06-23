
function UserService() {
    this.conferenceURL = "service/ConferenceService.aspx";
    this.userURL = "service/UserService.aspx";
    this.reportURL = "service/ReportService.aspx";
    this.updateURL = "service/UpdateService.aspx";
}



UserService.prototype = new ServiceBase();

UserService.prototype.setPassword = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "SetPassword";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}



UserService.prototype.forgotPassword = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "ForgotPassword";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}
UserService.prototype.getUserByEmail = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "GetUserByEmail";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}

UserService.prototype.ForgotPassword = function (PostData, callback, async) {
    var request = new RequestHeader("ForgotPassword", PostData, callback);
    return this.PostRequest(request, async);
}

UserService.prototype.RegisterUser = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "RegisterWebUser";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}

UserService.prototype.AuthenticateUser = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "AuthenticateUser";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}

UserService.prototype.ContactUS = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "ContactUS";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}

UserService.prototype.SubmitWebsiteFeedback = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "SubmitWebsiteFeedback";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}

UserService.prototype.AddEventToCalendar = function (data, async, callBack) {
    var reqHeader = new RequestHeader();
    reqHeader.Command = "AddEventToCalendar";
    reqHeader.Data = data;
    return this.ExecuteService(reqHeader, async, callBack, ConferenerManagerServices.User);
}

function RequestHeader(Command, Data) {
    this.Command = Command;
    this.Data = Data;
}

function CallBack() {
    this.func = "";
    this.data = "";
}

var g_UserService = new UserService();