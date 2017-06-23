// JScript File

var ConferenerManagerServices = {
    Conference: 1,
    User: 2,
    Reports: 3,
    Update : 4
}

function ServiceBase() {
    this.XmlHttp = new XMLHttpRequest();
    this.conferenceURL = "service/ConferenceService.aspx";
    this.userURL = "service/UserService.aspx";
    this.reportURL = "service/ReportService.aspx";
    this.updateURL = "service/UpdateService.aspx";
}

ServiceBase.prototype.ExecuteService = function (PostData, async, callBack, serviceType) {
    try {
        if (serviceType == ConferenerManagerServices.Conference) {
            this.XmlHttp.open("POST", this.conferenceURL, async);
        }
        else if (serviceType == ConferenerManagerServices.User) {
            this.XmlHttp.open("POST", this.userURL, async);
        }
        else if (serviceType == ConferenerManagerServices.Reports) {
            this.XmlHttp.open("POST", this.reportURL, async);
        }
        else if (serviceType == ConferenerManagerServices.Update) {
            this.XmlHttp.open("POST", this.updateURL, async);
        }
        this.XmlHttp.send(JSON.stringify(PostData));
        this.callback = callBack;

        if (!async) {
            return JSON.parse(this.XmlHttp.responseText);
        }

        else {
            var me = this;

            var timer = window.setInterval(function () {
                if (me.XmlHttp.readyState == 4) {
                    window.clearInterval(timer);
                    if (me.XmlHttp.status != 200) {
                        return;
                    }
                    var Header = JSON.parse(me.XmlHttp.responseText);
                    if (Header.isError) {
                        throw new ServiceException(Header.ErrorCode, Header.ErrorMessage);
                    }
                    var result = Header.Result;
                    window[me.callback](result);
                }
            }, 1000);

        }
    }
    catch (ex) {
        if (ex.code == 19) {
            return false;
        }
        return true;
    }
}

function ServiceException(errorCode, errorMessage) {
    this.errorCode = errorCode;
    this.errorMessage = errorMessage;
}

window.onError = function () {

}