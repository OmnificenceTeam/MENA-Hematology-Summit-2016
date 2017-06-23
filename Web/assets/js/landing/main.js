var pages = {};
pages.$ACTUEL = $(".page-home");
pages.prepare = function () {
   // pages.contact.prepare();
    //pages.live.prepare();
   // pages.work.prepare();
   // pages.about.prepare();
  //  pages.etape.prepare();
  //  pages.legal.prepare()
};
pages.home = {};
pages.home.mouse = [0, 0, 0];
pages.home.loopImmobiles = 0;
pages.home.lastTime = 1;
pages.home.lookupTable = [];
pages.home.timer;
pages.home.i = 0;
pages.home.once = false;
pages.home.reset = function () {
    TweenMax.killChildTweensOf(document.getElementById("home-anim"));
    clearTimeout(pages.home.timer);
    setTimeout(function () {
        clearTimeout(pages.home.timer);
        TweenMax.killChildTweensOf(document.getElementById("home-anim"))
    }, 500)
};
pages.home.prepare = function () {
    $("body").mousemove($.throttle(150, true, function (b) {
        pages.home.mouse = [b.clientX, b.clientY, b.timeStamp]
    }));
    for (var a = 10000; a >= 0; a--) {
        pages.home.lookupTable.push(Math.random())
    }
    setTimeout(function () {
        pages.home.intro()
    }, 500)
};
pages.home.lookup = function () {
    (pages.home.i > 10000) ? pages.home.i = 0 : pages.home.i++;
    return pages.home.lookupTable[pages.home.i]
};
pages.home.intro = function () {
    var a = new TimelineLite(),
        b = [];
    b[0] = (W < 1024) ? 5 : 30;
    b[1] = (W < 1024) ? 6 : 31;
    a.to($(".page-home"), 0.5, {
        autoAlpha: 1,
        display: "block"
    });
    a.to($(".page-home > .menu > div"), 0.5, {
        autoAlpha: 1
    });
    a.to($(".page-home > .menu > div > a > div, .page-home .menu footer"), 0.35, {
        autoAlpha: 1
    });
    a.to($(".page-home > div > div > div > *"), 0.5, {
        y: 0,
        onComplete: function () {
            $("html").removeClass("loading");
            TweenMax.set($(".page-contact"), {
                opacity: 1
            });
            pages.home.animate();
           
        }
    })
};
pages.home.animate = function () {
    var l = document.createElement("div"),
        k = document.createElement("div"),
        g = document.createElement("div"),
        c = document.createElement("div"),
        bl = document.createElement("div"),
        h = document.getElementById("home-anim");
    l.className = "elem elem-carre";
    k.className = "elem elem-rond";
    g.className = "elem elem-triangle";
    c.className = "elem elem-losange";
    bl.className = "elem elem-blue";

    var j = [];
    j[0] = Math.floor((pages.home.lookup() * 100));
    j[1] = Math.floor((pages.home.lookup() * 100));
    j[2] = Math.floor((pages.home.lookup() * 100));
    j[3] = Math.floor((pages.home.lookup() * 100));
    j[4] = Math.floor((pages.home.lookup() * 100));
    j[5] = Math.floor((pages.home.lookup() * 100));
    j[6] = Math.floor((pages.home.lookup() * 100));
    j[7] = Math.floor((pages.home.lookup() * 100));

    j[8] = Math.floor((pages.home.lookup() * 100));
    j[9] = Math.floor((pages.home.lookup() * 100));


    if (j[0] < 50 && j[1] < 50) {
        (pages.home.lookup() < 0.5) ? j[0] = j[0] + 50 : j[1] = j[1] + 50
    }
    if (j[2] < 50 && j[3] < 50) {
        (pages.home.lookup() < 0.5) ? j[2] = j[2] + 50 : j[3] = j[3] + 50
    }
    if (j[4] < 50 && j[5] < 50) {
        (pages.home.lookup() < 0.5) ? j[4] = j[4] + 50 : j[5] = j[5] + 50
    }
    if (j[6] < 50 && j[7] < 50) {
        (pages.home.lookup() < 0.5) ? j[6] = j[6] + 50 : j[7] = j[7] + 50
    }

    if (j[8] < 50 && j[9] < 50) {
        (pages.home.lookup() < 0.5) ? j[8] = j[8] + 50 : j[9] = j[9] + 50
    }

    j[0] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[0] : j[0]) + "%";
    j[1] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[1] : j[1]) + "%";
    j[2] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[2] : j[2]) + "%";
    j[3] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[3] : j[3]) + "%";
    j[4] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[4] : j[4]) + "%";
    j[5] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[5] : j[5]) + "%";
    j[6] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[6] : j[6]) + "%";
    j[7] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[7] : j[7]) + "%";
    j[8] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[8] : j[8]) + "%";
    j[9] = "+=" + (pages.home.lookup() < 0.5 ? 0 - j[9] : j[9]) + "%";

    if (parseInt(pages.home.lastTime, 10) == parseInt(pages.home.mouse[2], 10)) {
        pages.home.loopImmobiles++
    } else {
        pages.home.loopImmobiles = 0
    }
    pages.home.lastTime = pages.home.mouse[2];

    var f = [];
    f[0] = Math.floor((pages.home.lookup() * 2));
    f[1] = Math.floor((pages.home.lookup() * 2));
    f[2] = Math.floor((pages.home.lookup() * 2));
    f[3] = Math.floor((pages.home.lookup() * 2));
    f[4] = Math.floor((pages.home.lookup() * 2));

    var i = [];

    var e = [];
    e[0] = (pages.home.lookup() / 2 + 1);
    e[1] = (pages.home.lookup() / 2 + 1);
    e[2] = (pages.home.lookup() / 2 + 1);
    e[3] = (pages.home.lookup() / 2 + 1);
    e[4] = (pages.home.lookup() / 2 + 1);

    var b = [];
    b[0] = (pages.home.lookup() < 0.5) ? (720 * pages.home.lookup()) + "_ccw" : (720 * pages.home.lookup()) + "_cw";
    b[1] = (pages.home.lookup() < 0.5) ? (720 * pages.home.lookup()) + "_ccw" : (720 * pages.home.lookup()) + "_cw";
    b[2] = (pages.home.lookup() < 0.5) ? (720 * pages.home.lookup()) + "_ccw" : (720 * pages.home.lookup()) + "_cw";
    b[3] = (pages.home.lookup() < 0.5) ? (720 * pages.home.lookup()) + "_ccw" : (720 * pages.home.lookup()) + "_cw";
    b[4] = (pages.home.lookup() < 0.5) ? (720 * pages.home.lookup()) + "_ccw" : (720 * pages.home.lookup()) + "_cw";
    // a time interval the elements comes out, d is the speed of the element coming out
    var a = (W > 767) ? (W > 1900) ? 500 : 1000 : 700,
        d = (W > 767) ? (W > 1900) ? 5 : 10 : 5;

    if ((!document[hidden]) && (pages.home.loopImmobiles < 50)) {
        h.appendChild(l);
        h.appendChild(k);
        h.appendChild(g);
        h.appendChild(c);
        h.appendChild(bl);

        TweenMax.to(l, 1 * d, {
            left: j[0],
            top: j[1],
            delay: f[0],
            scale: e[0],
            rotation: b[0],
            ease: Power3.easeIn,
            onComplete: function () {
                $(l).remove()
            }
        });
        TweenMax.to(k, 1 * d, {
            left: j[2],
            top: j[3],
            delay: f[1],
            scale: e[1],
            rotation: b[1],
            ease: Power3.easeIn,
            onComplete: function () {
                $(k).remove()
            }
        });
        TweenMax.to(g, 1 * d, {
            left: j[4],
            top: j[5],
            delay: f[2],
            scale: e[2],
            rotation: b[2],
            ease: Power3.easeIn,
            onComplete: function () {
                $(g).remove()
            }
        });
        TweenMax.to(c, 1 * d, {
            left: j[6],
            top: j[7],
            delay: f[3],
            scale: e[3],
            rotation: b[3],
            ease: Power3.easeIn,
            onComplete: function () {
                $(c).remove()
            }
        });

        TweenMax.to(bl, 1 * d, {
            left: j[8],
            top: j[9],
            delay: f[4],
            scale: e[4],
            rotation: b[4],
            ease: Power1.easeIn,
            onComplete: function () {
                $(bl).remove()
            }
        });


        TweenMax.to(l, d, {
            opacity: 1,
            delay: f[0]
        });
        TweenMax.to(k, d, {
            opacity: 1,
            delay: f[1]
        });
        TweenMax.to(g, d, {
            opacity: 1,
            delay: f[2]
        });
        TweenMax.to(c, d, {
            opacity: 1,
            delay: f[3]
        });
        TweenMax.to(bl, d, {
            opacity: 1,
            delay: f[4]
        });
    }
    pages.home.timer = setTimeout(function () {
        pages.home.animate()
    }, a)
};






function debounce(b, d, a) {
    var c;
    return function () {
        var h = this,
            g = arguments;
        var f = function () {
            c = null;
            if (!a) {
                b.apply(h, g)
            }
        };
        var e = a && !c;
        clearTimeout(c);
        c = setTimeout(f, d);
        if (e) {
            b.apply(h, g)
        }
    }
}
$(window).on("orientationchange", function (a) { });
$(".main").on("click", ".backtotop", function (c) {
    c.preventDefault();
    var b = $(this),
        a = b.parents(".page").children("div");
    if (a.length == 0) {
        a = b.parent().parent()
    }
    TweenMax.to(a, 1.5, {
        scrollTo: {
            y: 0
        }
    })
});
$(".main").on("click", ".scrolltowork", function (a) {
    a.preventDefault();
    TweenMax.to($(this).parent().parent(), 0.5, {
        scrollTo: {
            y: H
        }
    })
});
$(window).on("resize", function () {
    W = $("body").width();
    H = $("body").height();
    var d = $(".responsive-bg").parent(),
        c = W / H,
        e = (c > 1) ? (1920 / 1080) : (1080 / 1920),
        b, a;
    if ((c > 1 && c > e) || (c < 1 && c > e)) {
        b = W;
        a = b / e
    } else {
        a = H;
        b = a * e
    }
    if (W >= H) {
        $("body").addClass("landscape")
    } else {
        $("body").removeClass("landscape")
    }
    d.css({
        width: b + "px",
        height: a + "px",
        "margin-top": -a / 2 + "px",
        "margin-left": -b / 2 + "px"
    })
}).trigger("resize");
$("body").one("touchstart", function () {
    $("html").addClass("tactile")
});
$(document).ready(function () {
    pages.home.prepare();
    //var b = $("html img").length,
    //    a = 0;
    //$("html").imagesLoaded().always(function (c) {
    //    //picturefill();
    //    TweenMax.killChildTweensOf($("#loading"));
    //    TweenMax.set($("#loading"), {
    //        width: 0
    //    });
    //    TweenMax.killChildTweensOf($(".loading-oo"));
    //    TweenMax.to($("#loading"), 0.25, {
    //        width: "100%",
    //        autoAlpha: 0,
    //        onComplete: function () {
    //            TweenMax.set($("#loading"), {
    //                width: 0,
    //                autoAlpha: 1
    //            })
    //        }
    //    });
    //    TweenMax.to($(".loading-oo > div"), 0.2, {
    //        width: "100%",
    //        autoAlpha: 0,
    //        onComplete: function () {
    //            TweenMax.set($("#start-loading"), {
    //                display: "none"
    //            });
    //            pages.home.prepare()
    //        }
    //    });
    //    $(window).trigger("resize")
    //}).progress(function (c, e) {
    //    a++;
    //    var d = (a / b * 100) + "%";
    //    if (a / b != 1) {
    //        TweenMax.to($("#loading"), 1, {
    //            width: d
    //        })
    //    }
    //    if (a / b != 1) {
    //        TweenMax.to($(".loading-oo > div"), 1, {
    //            width: d
    //        })
    //    }
    //})
});
var hidden, visibilityChange;
if (typeof document.hidden !== "undefined") {
    hidden = "hidden";
    visibilityChange = "visibilitychange"
} else {
    if (typeof document.mozHidden !== "undefined") {
        hidden = "mozHidden";
        visibilityChange = "mozvisibilitychange"
    } else {
        if (typeof document.msHidden !== "undefined") {
            hidden = "msHidden";
            visibilityChange = "msvisibilitychange"
        } else {
            if (typeof document.webkitHidden !== "undefined") {
                hidden = "webkitHidden";
                visibilityChange = "webkitvisibilitychange"
            }
        }
    }
};