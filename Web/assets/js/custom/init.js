
function showLoader() {
    $(".load-bar").css("visibility", "visible");
}

function hideLoader() {
    $(".load-bar").css("visibility", "hidden");
}

function modalAlert(msg) {
    $("#modalAlert").modal("show");
    $("#modalAlert").find("#mdlMsg").html(msg);
}


function timeDifference(previous) {
    var current = new Date();
    var msPerMinute = 60 * 1000;
    var msPerHour = msPerMinute * 60;
    var msPerDay = msPerHour * 24;
    var msPerMonth = msPerDay * 30;
    var msPerYear = msPerDay * 365;

    var elapsed = current - new Date(previous);

    if (elapsed < msPerMinute) {
        return 'one minute ago';
    }

    else if (elapsed < msPerHour) {
        var str = ' minute ago';
        if (Math.round(elapsed / msPerMinute) > 1)
            str = ' minutes ago';
        return Math.round(elapsed / msPerMinute) + str;
    }

    else if (elapsed < msPerDay) {
        return Math.round(elapsed / msPerHour) + ' hours ago';
    }

    else if (elapsed < msPerMonth) {
        var str = ' day ago';
        if (Math.round(elapsed / msPerDay) > 1)
            str = ' days ago';
        return Math.round(elapsed / msPerDay) + str;
    }

    else if (elapsed < msPerYear) {
        return Math.round(elapsed / msPerMonth) + ' months ago';
    }

    else {
        return Math.round(elapsed / msPerYear) + ' years ago';
    }
}

function getQueryParams(qs) {
    qs = qs.split('+').join(' ');

    var params = {},
        tokens,
        re = /[?&]?([^=]+)=([^&]*)/g;

    while (tokens = re.exec(qs)) {
        params[decodeURIComponent(tokens[1])] = decodeURIComponent(tokens[2]);
    }

    return params;
}