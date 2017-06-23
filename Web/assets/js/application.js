function onYouTubeIframeAPIReady() {
    HOME.initYouTube()
} ! function (t, e) {
    t.rails !== e && t.error("jquery-ujs has already been loaded!");
    var n, i = t(document);
    t.rails = n = {
        linkClickSelector: "a[data-confirm], a[data-method], a[data-remote], a[data-disable-with], a[data-disable]",
        buttonClickSelector: "button[data-remote]:not(form button), button[data-confirm]:not(form button)",
        inputChangeSelector: "select[data-remote], input[data-remote], textarea[data-remote]",
        formSubmitSelector: "form",
        formInputClickSelector: "form input[type=submit], form input[type=image], form button[type=submit], form button:not([type]), input[type=submit][form], input[type=image][form], button[type=submit][form], button[form]:not([type])",
        disableSelector: "input[data-disable-with]:enabled, button[data-disable-with]:enabled, textarea[data-disable-with]:enabled, input[data-disable]:enabled, button[data-disable]:enabled, textarea[data-disable]:enabled",
        enableSelector: "input[data-disable-with]:disabled, button[data-disable-with]:disabled, textarea[data-disable-with]:disabled, input[data-disable]:disabled, button[data-disable]:disabled, textarea[data-disable]:disabled",
        requiredInputSelector: "input[name][required]:not([disabled]),textarea[name][required]:not([disabled])",
        fileInputSelector: "input[type=file]",
        linkDisableSelector: "a[data-disable-with], a[data-disable]",
        buttonDisableSelector: "button[data-remote][data-disable-with], button[data-remote][data-disable]",
        CSRFProtection: function (e) {
            var n = t('meta[name="csrf-token"]').attr("content");
            n && e.setRequestHeader("X-CSRF-Token", n)
        },
        refreshCSRFTokens: function () {
            var e = t("meta[name=csrf-token]").attr("content"),
                n = t("meta[name=csrf-param]").attr("content");
            t('form input[name="' + n + '"]').val(e)
        },
        fire: function (e, n, i) {
            var r = t.Event(n);
            return e.trigger(r, i), r.result !== !1
        },
        confirm: function (t) {
            return confirm(t)
        },
        ajax: function (e) {
            return t.ajax(e)
        },
        href: function (t) {
            return t.attr("href")
        },
        handleRemote: function (i) {
            var r, o, a, s, u, l, c, d;
            if (n.fire(i, "ajax:before")) {
                if (s = i.data("cross-domain"), u = s === e ? null : s, l = i.data("with-credentials") || null, c = i.data("type") || t.ajaxSettings && t.ajaxSettings.dataType, i.is("form")) {
                    r = i.attr("method"), o = i.attr("action"), a = i.serializeArray();
                    var f = i.data("ujs:submit-button");
                    f && (a.push(f), i.data("ujs:submit-button", null))
                } else i.is(n.inputChangeSelector) ? (r = i.data("method"), o = i.data("url"), a = i.serialize(), i.data("params") && (a = a + "&" + i.data("params"))) : i.is(n.buttonClickSelector) ? (r = i.data("method") || "get", o = i.data("url"), a = i.serialize(), i.data("params") && (a = a + "&" + i.data("params"))) : (r = i.data("method"), o = n.href(i), a = i.data("params") || null);
                return d = {
                    type: r || "GET",
                    data: a,
                    dataType: c,
                    beforeSend: function (t, r) {
                        return r.dataType === e && t.setRequestHeader("accept", "*/*;q=0.5, " + r.accepts.script), n.fire(i, "ajax:beforeSend", [t, r]) ? void i.trigger("ajax:send", t) : !1
                    },
                    success: function (t, e, n) {
                        i.trigger("ajax:success", [t, e, n])
                    },
                    complete: function (t, e) {
                        i.trigger("ajax:complete", [t, e])
                    },
                    error: function (t, e, n) {
                        i.trigger("ajax:error", [t, e, n])
                    },
                    crossDomain: u
                }, l && (d.xhrFields = {
                    withCredentials: l
                }), o && (d.url = o), n.ajax(d)
            }
            return !1
        },
        handleMethod: function (i) {
            var r = n.href(i),
                o = i.data("method"),
                a = i.attr("target"),
                s = t("meta[name=csrf-token]").attr("content"),
                u = t("meta[name=csrf-param]").attr("content"),
                l = t('<form method="post" action="' + r + '"></form>'),
                c = '<input name="_method" value="' + o + '" type="hidden" />';
            u !== e && s !== e && (c += '<input name="' + u + '" value="' + s + '" type="hidden" />'), a && l.attr("target", a), l.hide().append(c).appendTo("body"), l.submit()
        },
        formElements: function (e, n) {
            return e.is("form") ? t(e[0].elements).filter(n) : e.find(n)
        },
        disableFormElements: function (e) {
            n.formElements(e, n.disableSelector).each(function () {
                n.disableFormElement(t(this))
            })
        },
        disableFormElement: function (t) {
            var n, i;
            n = t.is("button") ? "html" : "val", i = t.data("disable-with"), t.data("ujs:enable-with", t[n]()), i !== e && t[n](i), t.prop("disabled", !0)
        },
        enableFormElements: function (e) {
            n.formElements(e, n.enableSelector).each(function () {
                n.enableFormElement(t(this))
            })
        },
        enableFormElement: function (t) {
            var e = t.is("button") ? "html" : "val";
            t.data("ujs:enable-with") && t[e](t.data("ujs:enable-with")), t.prop("disabled", !1)
        },
        allowAction: function (t) {
            var e, i = t.data("confirm"),
                r = !1;
            return i ? (n.fire(t, "confirm") && (r = n.confirm(i), e = n.fire(t, "confirm:complete", [r])), r && e) : !0
        },
        blankInputs: function (e, n, i) {
            var r, o, a = t(),
                s = n || "input,textarea",
                u = e.find(s);
            return u.each(function () {
                if (r = t(this), o = r.is("input[type=checkbox],input[type=radio]") ? r.is(":checked") : r.val(), !o == !i) {
                    if (r.is("input[type=radio]") && u.filter('input[type=radio]:checked[name="' + r.attr("name") + '"]').length) return !0;
                    a = a.add(r)
                }
            }), a.length ? a : !1
        },
        nonBlankInputs: function (t, e) {
            return n.blankInputs(t, e, !0)
        },
        stopEverything: function (e) {
            return t(e.target).trigger("ujs:everythingStopped"), e.stopImmediatePropagation(), !1
        },
        disableElement: function (t) {
            var i = t.data("disable-with");
            t.data("ujs:enable-with", t.html()), i !== e && t.html(i), t.bind("click.railsDisable", function (t) {
                return n.stopEverything(t)
            })
        },
        enableElement: function (t) {
            t.data("ujs:enable-with") !== e && (t.html(t.data("ujs:enable-with")), t.removeData("ujs:enable-with")), t.unbind("click.railsDisable")
        }
    }, n.fire(i, "rails:attachBindings") && (t.ajaxPrefilter(function (t, e, i) {
        t.crossDomain || n.CSRFProtection(i)
    }), t(window).on("pageshow.rails", function () {
        t(t.rails.enableSelector).each(function () {
            var e = t(this);
            e.data("ujs:enable-with") && t.rails.enableFormElement(e)
        }), t(t.rails.linkDisableSelector).each(function () {
            var e = t(this);
            e.data("ujs:enable-with") && t.rails.enableElement(e)
        })
    }), i.delegate(n.linkDisableSelector, "ajax:complete", function () {
        n.enableElement(t(this))
    }), i.delegate(n.buttonDisableSelector, "ajax:complete", function () {
        n.enableFormElement(t(this))
    }), i.delegate(n.linkClickSelector, "click.rails", function (i) {
        var r = t(this),
            o = r.data("method"),
            a = r.data("params"),
            s = i.metaKey || i.ctrlKey;
        if (!n.allowAction(r)) return n.stopEverything(i);
        if (!s && r.is(n.linkDisableSelector) && n.disableElement(r), r.data("remote") !== e) {
            if (s && (!o || "GET" === o) && !a) return !0;
            var u = n.handleRemote(r);
            return u === !1 ? n.enableElement(r) : u.fail(function () {
                n.enableElement(r)
            }), !1
        }
        return o ? (n.handleMethod(r), !1) : void 0
    }), i.delegate(n.buttonClickSelector, "click.rails", function (e) {
        var i = t(this);
        if (!n.allowAction(i)) return n.stopEverything(e);
        i.is(n.buttonDisableSelector) && n.disableFormElement(i);
        var r = n.handleRemote(i);
        return r === !1 ? n.enableFormElement(i) : r.fail(function () {
            n.enableFormElement(i)
        }), !1
    }), i.delegate(n.inputChangeSelector, "change.rails", function (e) {
        var i = t(this);
        return n.allowAction(i) ? (n.handleRemote(i), !1) : n.stopEverything(e)
    }), i.delegate(n.formSubmitSelector, "submit.rails", function (i) {
        var r, o, a = t(this),
            s = a.data("remote") !== e;
        if (!n.allowAction(a)) return n.stopEverything(i);
        if (a.attr("novalidate") == e && (r = n.blankInputs(a, n.requiredInputSelector), r && n.fire(a, "ajax:aborted:required", [r]))) return n.stopEverything(i);
        if (s) {
            if (o = n.nonBlankInputs(a, n.fileInputSelector)) {
                setTimeout(function () {
                    n.disableFormElements(a)
                }, 13);
                var u = n.fire(a, "ajax:aborted:file", [o]);
                return u || setTimeout(function () {
                    n.enableFormElements(a)
                }, 13), u
            }
            return n.handleRemote(a), !1
        }
        setTimeout(function () {
            n.disableFormElements(a)
        }, 13)
    }), i.delegate(n.formInputClickSelector, "click.rails", function (e) {
        var i = t(this);
        if (!n.allowAction(i)) return n.stopEverything(e);
        var r = i.attr("name"),
            o = r ? {
                name: r,
                value: i.val()
            } : null;
        i.closest("form").data("ujs:submit-button", o)
    }), i.delegate(n.formSubmitSelector, "ajax:send.rails", function (e) {
        this == e.target && n.disableFormElements(t(this))
    }), i.delegate(n.formSubmitSelector, "ajax:complete.rails", function (e) {
        this == e.target && n.enableFormElements(t(this))
    }), t(function () {
        n.refreshCSRFTokens()
    }))
}(jQuery),
function () {
    function t() { }

    function e(t, e) {
        for (var n = t.length; n--;)
            if (t[n].listener === e) return n;
        return -1
    }

    function n(t) {
        return function () {
            return this[t].apply(this, arguments)
        }
    }
    var i = t.prototype,
        r = this,
        o = r.EventEmitter;
    i.getListeners = function (t) {
        var e, n, i = this._getEvents();
        if ("object" == typeof t) {
            e = {};
            for (n in i) i.hasOwnProperty(n) && t.test(n) && (e[n] = i[n])
        } else e = i[t] || (i[t] = []);
        return e
    }, i.flattenListeners = function (t) {
        var e, n = [];
        for (e = 0; t.length > e; e += 1) n.push(t[e].listener);
        return n
    }, i.getListenersAsObject = function (t) {
        var e, n = this.getListeners(t);
        return n instanceof Array && (e = {}, e[t] = n), e || n
    }, i.addListener = function (t, n) {
        var i, r = this.getListenersAsObject(t),
            o = "object" == typeof n;
        for (i in r) r.hasOwnProperty(i) && -1 === e(r[i], n) && r[i].push(o ? n : {
            listener: n,
            once: !1
        });
        return this
    }, i.on = n("addListener"), i.addOnceListener = function (t, e) {
        return this.addListener(t, {
            listener: e,
            once: !0
        })
    }, i.once = n("addOnceListener"), i.defineEvent = function (t) {
        return this.getListeners(t), this
    }, i.defineEvents = function (t) {
        for (var e = 0; t.length > e; e += 1) this.defineEvent(t[e]);
        return this
    }, i.removeListener = function (t, n) {
        var i, r, o = this.getListenersAsObject(t);
        for (r in o) o.hasOwnProperty(r) && (i = e(o[r], n), -1 !== i && o[r].splice(i, 1));
        return this
    }, i.off = n("removeListener"), i.addListeners = function (t, e) {
        return this.manipulateListeners(!1, t, e)
    }, i.removeListeners = function (t, e) {
        return this.manipulateListeners(!0, t, e)
    }, i.manipulateListeners = function (t, e, n) {
        var i, r, o = t ? this.removeListener : this.addListener,
            a = t ? this.removeListeners : this.addListeners;
        if ("object" != typeof e || e instanceof RegExp)
            for (i = n.length; i--;) o.call(this, e, n[i]);
        else
            for (i in e) e.hasOwnProperty(i) && (r = e[i]) && ("function" == typeof r ? o.call(this, i, r) : a.call(this, i, r));
        return this
    }, i.removeEvent = function (t) {
        var e, n = typeof t,
            i = this._getEvents();
        if ("string" === n) delete i[t];
        else if ("object" === n)
            for (e in i) i.hasOwnProperty(e) && t.test(e) && delete i[e];
        else delete this._events;
        return this
    }, i.removeAllListeners = n("removeEvent"), i.emitEvent = function (t, e) {
        var n, i, r, o, a = this.getListenersAsObject(t);
        for (r in a)
            if (a.hasOwnProperty(r))
                for (i = a[r].length; i--;) n = a[r][i], n.once === !0 && this.removeListener(t, n.listener), o = n.listener.apply(this, e || []), o === this._getOnceReturnValue() && this.removeListener(t, n.listener);
        return this
    }, i.trigger = n("emitEvent"), i.emit = function (t) {
        var e = Array.prototype.slice.call(arguments, 1);
        return this.emitEvent(t, e)
    }, i.setOnceReturnValue = function (t) {
        return this._onceReturnValue = t, this
    }, i._getOnceReturnValue = function () {
        return this.hasOwnProperty("_onceReturnValue") ? this._onceReturnValue : !0
    }, i._getEvents = function () {
        return this._events || (this._events = {})
    }, t.noConflict = function () {
        return r.EventEmitter = o, t
    }, "function" == typeof define && define.amd ? define("eventEmitter/EventEmitter", [], function () {
        return t
    }) : "object" == typeof module && module.exports ? module.exports = t : this.EventEmitter = t
}.call(this),
    function (t) {
        function e(e) {
            var n = t.event;
            return n.target = n.target || n.srcElement || e, n
        }
        var n = document.documentElement,
            i = function () { };
        n.addEventListener ? i = function (t, e, n) {
            t.addEventListener(e, n, !1)
        } : n.attachEvent && (i = function (t, n, i) {
            t[n + i] = i.handleEvent ? function () {
                var n = e(t);
                i.handleEvent.call(i, n)
            } : function () {
                var n = e(t);
                i.call(t, n)
            }, t.attachEvent("on" + n, t[n + i])
        });
        var r = function () { };
        n.removeEventListener ? r = function (t, e, n) {
            t.removeEventListener(e, n, !1)
        } : n.detachEvent && (r = function (t, e, n) {
            t.detachEvent("on" + e, t[e + n]);
            try {
                delete t[e + n]
            } catch (i) {
                t[e + n] = void 0
            }
        });
        var o = {
            bind: i,
            unbind: r
        };
        "function" == typeof define && define.amd ? define("eventie/eventie", o) : t.eventie = o
    }(this),
    function (t, e) {
        "function" == typeof define && define.amd ? define(["eventEmitter/EventEmitter", "eventie/eventie"], function (n, i) {
            return e(t, n, i)
        }) : "object" == typeof exports ? module.exports = e(t, require("wolfy87-eventemitter"), require("eventie")) : t.imagesLoaded = e(t, t.EventEmitter, t.eventie)
    }(window, function (t, e, n) {
        function i(t, e) {
            for (var n in e) t[n] = e[n];
            return t
        }

        function r(t) {
            return "[object Array]" === f.call(t)
        }

        function o(t) {
            var e = [];
            if (r(t)) e = t;
            else if ("number" == typeof t.length)
                for (var n = 0, i = t.length; i > n; n++) e.push(t[n]);
            else e.push(t);
            return e
        }

        function a(t, e, n) {
            if (!(this instanceof a)) return new a(t, e);
            "string" == typeof t && (t = document.querySelectorAll(t)), this.elements = o(t), this.options = i({}, this.options), "function" == typeof e ? n = e : i(this.options, e), n && this.on("always", n), this.getImages(), l && (this.jqDeferred = new l.Deferred);
            var r = this;
            setTimeout(function () {
                r.check()
            })
        }

        function s(t) {
            this.img = t
        }

        function u(t) {
            this.src = t, h[t] = this
        }
        var l = t.jQuery,
            c = t.console,
            d = void 0 !== c,
            f = Object.prototype.toString;
        a.prototype = new e, a.prototype.options = {}, a.prototype.getImages = function () {
            this.images = [];
            for (var t = 0, e = this.elements.length; e > t; t++) {
                var n = this.elements[t];
                "IMG" === n.nodeName && this.addImage(n);
                var i = n.nodeType;
                if (i && (1 === i || 9 === i || 11 === i))
                    for (var r = n.querySelectorAll("img"), o = 0, a = r.length; a > o; o++) {
                        var s = r[o];
                        this.addImage(s)
                    }
            }
        }, a.prototype.addImage = function (t) {
            var e = new s(t);
            this.images.push(e)
        }, a.prototype.check = function () {
            function t(t, r) {
                return e.options.debug && d && c.log("confirm", t, r), e.progress(t), n++, n === i && e.complete(), !0
            }
            var e = this,
                n = 0,
                i = this.images.length;
            if (this.hasAnyBroken = !1, !i) return void this.complete();
            for (var r = 0; i > r; r++) {
                var o = this.images[r];
                o.on("confirm", t), o.check()
            }
        }, a.prototype.progress = function (t) {
            this.hasAnyBroken = this.hasAnyBroken || !t.isLoaded;
            var e = this;
            setTimeout(function () {
                e.emit("progress", e, t), e.jqDeferred && e.jqDeferred.notify && e.jqDeferred.notify(e, t)
            })
        }, a.prototype.complete = function () {
            var t = this.hasAnyBroken ? "fail" : "done";
            this.isComplete = !0;
            var e = this;
            setTimeout(function () {
                if (e.emit(t, e), e.emit("always", e), e.jqDeferred) {
                    var n = e.hasAnyBroken ? "reject" : "resolve";
                    e.jqDeferred[n](e)
                }
            })
        }, l && (l.fn.imagesLoaded = function (t, e) {
            var n = new a(this, t, e);
            return n.jqDeferred.promise(l(this))
        }), s.prototype = new e, s.prototype.check = function () {
            var t = h[this.img.src] || new u(this.img.src);
            if (t.isConfirmed) return void this.confirm(t.isLoaded, "cached was confirmed");
            if (this.img.complete && void 0 !== this.img.naturalWidth) return void this.confirm(0 !== this.img.naturalWidth, "naturalWidth");
            var e = this;
            t.on("confirm", function (t, n) {
                return e.confirm(t.isLoaded, n), !0
            }), t.check()
        }, s.prototype.confirm = function (t, e) {
            this.isLoaded = t, this.emit("confirm", this, e)
        };
        var h = {};
        return u.prototype = new e, u.prototype.check = function () {
            if (!this.isChecked) {
                var t = new Image;
                n.bind(t, "load", this), n.bind(t, "error", this), t.src = this.src, this.isChecked = !0
            }
        }, u.prototype.handleEvent = function (t) {
            var e = "on" + t.type;
            this[e] && this[e](t)
        }, u.prototype.onload = function (t) {
            this.confirm(!0, "onload"), this.unbindProxyEvents(t)
        }, u.prototype.onerror = function (t) {
            this.confirm(!1, "onerror"), this.unbindProxyEvents(t)
        }, u.prototype.confirm = function (t, e) {
            this.isConfirmed = !0, this.isLoaded = t, this.emit("confirm", this, e)
        }, u.prototype.unbindProxyEvents = function (t) {
            n.unbind(t.target, "load", this), n.unbind(t.target, "error", this)
        }, a
    }),
    function (t, e) {
        "function" == typeof define && define.amd ? define(e) : "object" == typeof exports ? module.exports = e() : t.NProgress = e()
    }(this, function () {
        function t(t, e, n) {
            return e > t ? e : t > n ? n : t
        }

        function e(t) {
            return 100 * (-1 + t)
        }

        function n(t, n, i) {
            var r;
            return r = "translate3d" === l.positionUsing ? {
                transform: "translate3d(" + e(t) + "%,0,0)"
            } : "translate" === l.positionUsing ? {
                transform: "translate(" + e(t) + "%,0)"
            } : {
                "margin-left": e(t) + "%"
            }, r.transition = "all " + n + "ms " + i, r
        }

        function i(t, e) {
            var n = "string" == typeof t ? t : a(t);
            return n.indexOf(" " + e + " ") >= 0
        }

        function r(t, e) {
            var n = a(t),
                r = n + e;
            i(n, e) || (t.className = r.substring(1))
        }

        function o(t, e) {
            var n, r = a(t);
            i(t, e) && (n = r.replace(" " + e + " ", " "), t.className = n.substring(1, n.length - 1))
        }

        function a(t) {
            return (" " + (t.className || "") + " ").replace(/\s+/gi, " ")
        }

        function s(t) {
            t && t.parentNode && t.parentNode.removeChild(t)
        }
        var u = {};
        u.version = "0.1.6";
        var l = u.settings = {
            minimum: .08,
            easing: "ease",
            positionUsing: "",
            speed: 200,
            trickle: !0,
            trickleRate: .02,
            trickleSpeed: 800,
            showSpinner: !0,
            barSelector: '[role="bar"]',
            spinnerSelector: '[role="spinner"]',
            parent: "body",
            template: '<div class="bar" role="bar"><div class="peg"></div></div><div class="spinner" role="spinner"><div class="spinner-icon"></div></div>'
        };
        u.configure = function (t) {
            var e, n;
            for (e in t) n = t[e], void 0 !== n && t.hasOwnProperty(e) && (l[e] = n);
            return this
        }, u.status = null, u.set = function (e) {
            var i = u.isStarted();
            e = t(e, l.minimum, 1), u.status = 1 === e ? null : e;
            var r = u.render(!i),
                o = r.querySelector(l.barSelector),
                a = l.speed,
                s = l.easing;
            return r.offsetWidth, c(function (t) {
                "" === l.positionUsing && (l.positionUsing = u.getPositioningCSS()), d(o, n(e, a, s)), 1 === e ? (d(r, {
                    transition: "none",
                    opacity: 1
                }), r.offsetWidth, setTimeout(function () {
                    d(r, {
                        transition: "all " + a + "ms linear",
                        opacity: 0
                    }), setTimeout(function () {
                        u.remove(), t()
                    }, a)
                }, a)) : setTimeout(t, a)
            }), this
        }, u.isStarted = function () {
            return "number" == typeof u.status
        }, u.start = function () {
            u.status || u.set(0);
            var t = function () {
                setTimeout(function () {
                    u.status && (u.trickle(), t())
                }, l.trickleSpeed)
            };
            return l.trickle && t(), this
        }, u.done = function (t) {
            return t || u.status ? u.inc(.3 + .5 * Math.random()).set(1) : this
        }, u.inc = function (e) {
            var n = u.status;
            return n ? ("number" != typeof e && (e = (1 - n) * t(Math.random() * n, .1, .95)), n = t(n + e, 0, .994), u.set(n)) : u.start()
        }, u.trickle = function () {
            return u.inc(Math.random() * l.trickleRate)
        },
            function () {
                var t = 0,
                    e = 0;
                u.promise = function (n) {
                    return n && "resolved" != n.state() ? (0 == e && u.start(), t++, e++, n.always(function () {
                        e--, 0 == e ? (t = 0, u.done()) : u.set((t - e) / t)
                    }), this) : this
                }
            }(), u.render = function (t) {
                if (u.isRendered()) return document.getElementById("nprogress");
                r(document.documentElement, "nprogress-busy");
                var n = document.createElement("div");
                n.id = "nprogress", n.innerHTML = l.template;
                var i, o = n.querySelector(l.barSelector),
                    a = t ? "-100" : e(u.status || 0),
                    c = document.querySelector(l.parent);
                return d(o, {
                    transition: "all 0 linear",
                    transform: "translate3d(" + a + "%,0,0)"
                }), l.showSpinner || (i = n.querySelector(l.spinnerSelector), i && s(i)), c != document.body && r(c, "nprogress-custom-parent"), c.appendChild(n), n
            }, u.remove = function () {
                o(document.documentElement, "nprogress-busy"), o(document.querySelector(l.parent), "nprogress-custom-parent");
                var t = document.getElementById("nprogress");
                t && s(t)
            }, u.isRendered = function () {
                return !!document.getElementById("nprogress")
            }, u.getPositioningCSS = function () {
                var t = document.body.style,
                    e = "WebkitTransform" in t ? "Webkit" : "MozTransform" in t ? "Moz" : "msTransform" in t ? "ms" : "OTransform" in t ? "O" : "";
                return e + "Perspective" in t ? "translate3d" : e + "Transform" in t ? "translate" : "margin"
            };
        var c = function () {
            function t() {
                var n = e.shift();
                n && n(t)
            }
            var e = [];
            return function (n) {
                e.push(n), 1 == e.length && t()
            }
        }(),
            d = function () {
                function t(t) {
                    return t.replace(/^-ms-/, "ms-").replace(/-([\da-z])/gi, function (t, e) {
                        return e.toUpperCase()
                    })
                }

                function e(t) {
                    var e = document.body.style;
                    if (t in e) return t;
                    for (var n, i = r.length, o = t.charAt(0).toUpperCase() + t.slice(1) ; i--;)
                        if (n = r[i] + o, n in e) return n;
                    return t
                }

                function n(n) {
                    return n = t(n), o[n] || (o[n] = e(n))
                }

                function i(t, e, i) {
                    e = n(e), t.style[e] = i
                }
                var r = ["Webkit", "O", "Moz", "ms"],
                    o = {};
                return function (t, e) {
                    var n, r, o = arguments;
                    if (2 == o.length)
                        for (n in e) r = e[n], void 0 !== r && e.hasOwnProperty(n) && i(t, n, r);
                    else i(t, o[1], o[2])
                }
            }();
        return u
    }),
    function () {
        var t, e, n, i, r, o, a, s, u, l, c, d, f, h, m, p, v, g, y, w, b, E, T, S, k, A, C, x, R, j, _, F, q, L, D, I, P, O, N, H, M, z, B, U, Q, G, W, $, X, V, Y, K, J, Z, te, ee, ne = [].indexOf || function (t) {
            for (var e = 0, n = this.length; n > e; e++)
                if (e in this && this[e] === t) return e;
            return -1
        },
            ie = {}.hasOwnProperty,
            re = function (t, e) {
                function n() {
                    this.constructor = t
                }
                for (var i in e) ie.call(e, i) && (t[i] = e[i]);
                return n.prototype = e.prototype, t.prototype = new n, t.__super__ = e.prototype, t
            },
            oe = [].slice,
            ae = function (t, e) {
                return function () {
                    return t.apply(e, arguments)
                }
            };
        L = {}, f = 10, Y = !1, N = null, y = null, F = null, M = null, te = null, i = {
            BEFORE_CHANGE: "page:before-change",
            FETCH: "page:fetch",
            RECEIVE: "page:receive",
            CHANGE: "page:change",
            UPDATE: "page:update",
            LOAD: "page:load",
            RESTORE: "page:restore",
            BEFORE_UNLOAD: "page:before-unload",
            EXPIRE: "page:expire"
        }, S = function (t) {
            var e;
            return t = new n(t), G(), d(), null != N && N.start(), Y && (e = K(t.absolute)) ? (k(e), A(t, null, !1)) : A(t, X)
        }, K = function (t) {
            var e;
            return e = L[t], e && !e.transitionCacheDisabled ? e : void 0
        }, b = function (t) {
            return null == t && (t = !0), Y = t
        }, w = function (t) {
            return null == t && (t = !0), l ? t ? null != N ? N : N = new o("html") : (null != N && N.uninstall(), N = null) : void 0
        }, A = function (t, e, n) {
            return null == n && (n = !0), J(i.FETCH, {
                url: t.absolute
            }), null != te && te.abort(), te = new XMLHttpRequest, te.open("GET", t.withoutHashForIE10compatibility(), !0), te.setRequestHeader("Accept", "text/html, application/xhtml+xml, application/xml"), te.setRequestHeader("X-XHR-Referer", M), te.onload = function () {
                var n;
                return J(i.RECEIVE, {
                    url: t.absolute
                }), (n = O()) ? (z(t), B(), h.apply(null, T(n)), q(), "function" == typeof e && e(), J(i.LOAD)) : document.location.href = g() || t.absolute
            }, N && n && (te.onprogress = function () {
                return function (t) {
                    var e;
                    return e = t.lengthComputable ? t.loaded / t.total * 100 : N.value + (100 - N.value) / 10, N.advanceTo(e)
                }
            }(this)), te.onloadend = function () {
                return te = null
            }, te.onerror = function () {
                return document.location.href = t.absolute
            }, te.send()
        }, k = function (t) {
            return null != te && te.abort(), h(t.title, t.body), H(t), J(i.RESTORE)
        }, d = function () {
            var t;
            return t = new n(y.url), L[t.absolute] = {
                url: t.relative,
                body: document.body,
                title: document.title,
                positionY: window.pageYOffset,
                positionX: window.pageXOffset,
                cachedAt: (new Date).getTime(),
                transitionCacheDisabled: null != document.querySelector("[data-no-transition-cache]")
            }, p(f)
        }, I = function (t) {
            return null == t && (t = f), /^[\d]+$/.test(t) ? f = parseInt(t) : void 0
        }, p = function (t) {
            var e, n, r, o, a, s;
            for (r = Object.keys(L), e = r.map(function (t) {
                    return L[t].cachedAt
            }).sort(function (t, e) {
                    return e - t
            }), s = [], o = 0, a = r.length; a > o; o++) n = r[o], L[n].cachedAt <= e[t] && (J(i.EXPIRE, L[n]), s.push(delete L[n]));
            return s
        }, h = function (e, n, r, o) {
            return J(i.BEFORE_UNLOAD), document.title = e, document.documentElement.replaceChild(n, document.body), null != r && t.update(r), V(), o && E(), y = window.history.state, null != N && N.done(), J(i.CHANGE), J(i.UPDATE)
        }, E = function () {
            var t, e, n, i, r, o, a, s, u, l, c, d;
            for (o = Array.prototype.slice.call(document.body.querySelectorAll('script:not([data-turbolinks-eval="false"])')), a = 0, u = o.length; u > a; a++)
                if (r = o[a], "" === (c = r.type) || "text/javascript" === c) {
                    for (e = document.createElement("script"), d = r.attributes, s = 0, l = d.length; l > s; s++) t = d[s], e.setAttribute(t.name, t.value);
                    r.hasAttribute("async") || (e.async = !1), e.appendChild(document.createTextNode(r.innerHTML)), i = r.parentNode, n = r.nextSibling, i.removeChild(r), i.insertBefore(e, n)
                }
        }, W = function (t) {
            return t.innerHTML = t.innerHTML.replace(/<noscript[\S\s]*?<\/noscript>/gi, ""), t
        }, V = function () {
            var t, e;
            return t = (e = document.querySelectorAll("input[autofocus], textarea[autofocus]"))[e.length - 1], t && document.activeElement !== t ? t.focus() : void 0
        }, z = function (t) {
            return (t = new n(t)).absolute !== M ? window.history.pushState({
                turbolinks: !0,
                url: t.absolute
            }, "", t.absolute) : void 0
        }, B = function () {
            var t, e;
            return (t = te.getResponseHeader("X-XHR-Redirected-To")) ? (t = new n(t), e = t.hasNoHash() ? document.location.hash : "", window.history.replaceState(window.history.state, "", t.href + e)) : void 0
        }, g = function () {
            var t;
            return null != (t = te.getResponseHeader("Location")) && new n(t).crossOrigin() ? t : void 0
        }, G = function () {
            return M = document.location.href
        }, Q = function () {
            return window.history.replaceState({
                turbolinks: !0,
                url: document.location.href
            }, "", document.location.href)
        }, U = function () {
            return y = window.history.state
        }, q = function () {
            var t;
            return navigator.userAgent.match(/Firefox/) && !(t = new n).hasNoHash() ? (window.history.replaceState(y, "", t.withoutHash()), document.location.hash = t.hash) : void 0
        }, H = function (t) {
            return window.scrollTo(t.positionX, t.positionY)
        }, X = function () {
            return document.location.hash ? document.location.href = document.location.href : window.scrollTo(0, 0)
        }, m = function (t) {
            var e, n, i;
            if (null == t || "object" != typeof t) return t;
            e = new t.constructor;
            for (n in t) i = t[n], e[n] = m(i);
            return e
        }, P = function (t) {
            var e, n;
            return e = (null != (n = document.cookie.match(new RegExp(t + "=(\\w+)"))) ? n[1].toUpperCase() : void 0) || "", document.cookie = t + "=; expires=Thu, 01-Jan-70 00:00:01 GMT; path=/", e
        }, J = function (t, e) {
            var n;
            return "undefined" != typeof Prototype && Event.fire(document, t, e, !0), n = document.createEvent("Events"), e && (n.data = e), n.initEvent(t, !0, !0), document.dispatchEvent(n)
        }, D = function (t) {
            return !J(i.BEFORE_CHANGE, {
                url: t
            })
        }, O = function () {
            var t, e, n, i, r, o;
            return e = function () {
                var t;
                return 400 <= (t = te.status) && 600 > t
            }, o = function () {
                var t;
                return null != (t = te.getResponseHeader("Content-Type")) && t.match(/^(?:text\/html|application\/xhtml\+xml|application\/xml)(?:;|$)/)
            }, i = function (t) {
                var e, n, i, r, o;
                for (r = t.querySelector("head").childNodes, o = [], n = 0, i = r.length; i > n; n++) e = r[n], null != ("function" == typeof e.getAttribute ? e.getAttribute("data-turbolinks-track") : void 0) && o.push(e.getAttribute("src") || e.getAttribute("href"));
                return o
            }, t = function (t) {
                var e;
                return F || (F = i(document)), e = i(t), e.length !== F.length || r(e, F).length !== F.length
            }, r = function (t, e) {
                var n, i, r, o, a;
                for (t.length > e.length && (o = [e, t], t = o[0], e = o[1]), a = [], i = 0, r = t.length; r > i; i++) n = t[i], ne.call(e, n) >= 0 && a.push(n);
                return a
            }, !e() && o() && (n = v(te.responseText), n && !t(n)) ? n : void 0
        }, T = function (e) {
            var n;
            return n = e.querySelector("title"), [null != n ? n.textContent : void 0, W(e.querySelector("body")), t.get(e).token, "runScripts"]
        }, t = {
            get: function (t) {
                var e;
                return null == t && (t = document), {
                    node: e = t.querySelector('meta[name="csrf-token"]'),
                    token: null != e && "function" == typeof e.getAttribute ? e.getAttribute("content") : void 0
                }
            },
            update: function (t) {
                var e;
                return e = this.get(), null != e.token && null != t && e.token !== t ? e.node.setAttribute("content", t) : void 0
            }
        }, v = function (t) {
            var e;
            return e = document.documentElement.cloneNode(), e.innerHTML = t, e.head = e.querySelector("head"), e.body = e.querySelector("body"), e
        }, n = function () {
            function t(e) {
                return this.original = null != e ? e : document.location.href, this.original.constructor === t ? this.original : void this._parse()
            }
            return t.prototype.withoutHash = function () {
                return this.href.replace(this.hash, "").replace("#", "")
            }, t.prototype.withoutHashForIE10compatibility = function () {
                return this.withoutHash()
            }, t.prototype.hasNoHash = function () {
                return 0 === this.hash.length
            }, t.prototype.crossOrigin = function () {
                return this.origin !== (new t).origin
            }, t.prototype._parse = function () {
                var t;
                return (null != this.link ? this.link : this.link = document.createElement("a")).href = this.original, t = this.link, this.href = t.href, this.protocol = t.protocol, this.host = t.host, this.hostname = t.hostname, this.port = t.port, this.pathname = t.pathname, this.search = t.search, this.hash = t.hash, this.origin = [this.protocol, "//", this.hostname].join(""), 0 !== this.port.length && (this.origin += ":" + this.port), this.relative = [this.pathname, this.search, this.hash].join(""), this.absolute = this.href
            }, t
        }(), r = function (t) {
            function e(t) {
                return this.link = t, this.link.constructor === e ? this.link : (this.original = this.link.href, this.originalElement = this.link, this.link = this.link.cloneNode(!1), void e.__super__.constructor.apply(this, arguments))
            }
            return re(e, t), e.HTML_EXTENSIONS = ["html"], e.allowExtensions = function () {
                var t, n, i, r;
                for (n = 1 <= arguments.length ? oe.call(arguments, 0) : [], i = 0, r = n.length; r > i; i++) t = n[i], e.HTML_EXTENSIONS.push(t);
                return e.HTML_EXTENSIONS
            }, e.prototype.shouldIgnore = function () {
                return this.crossOrigin() || this._anchored() || this._nonHtml() || this._optOut() || this._target()
            }, e.prototype._anchored = function () {
                return (this.hash.length > 0 || "#" === this.href.charAt(this.href.length - 1)) && this.withoutHash() === (new n).withoutHash()
            }, e.prototype._nonHtml = function () {
                return this.pathname.match(/\.[a-z]+$/g) && !this.pathname.match(new RegExp("\\.(?:" + e.HTML_EXTENSIONS.join("|") + ")?$", "g"))
            }, e.prototype._optOut = function () {
                var t, e;
                for (e = this.originalElement; !t && e !== document;) t = null != e.getAttribute("data-no-turbolink"), e = e.parentNode;
                return t
            }, e.prototype._target = function () {
                return 0 !== this.link.target.length
            }, e
        }(n), e = function () {
            function t(t) {
                this.event = t, this.event.defaultPrevented || (this._extractLink(), this._validForTurbolinks() && (D(this.link.absolute) || Z(this.link.href), this.event.preventDefault()))
            }
            return t.installHandlerLast = function (e) {
                return e.defaultPrevented ? void 0 : (document.removeEventListener("click", t.handle, !1), document.addEventListener("click", t.handle, !1))
            }, t.handle = function (e) {
                return new t(e)
            }, t.prototype._extractLink = function () {
                var t;
                for (t = this.event.target; t.parentNode && "A" !== t.nodeName;) t = t.parentNode;
                return "A" === t.nodeName && 0 !== t.href.length ? this.link = new r(t) : void 0
            }, t.prototype._validForTurbolinks = function () {
                return null != this.link && !(this.link.shouldIgnore() || this._nonStandardClick())
            }, t.prototype._nonStandardClick = function () {
                return this.event.which > 1 || this.event.metaKey || this.event.ctrlKey || this.event.shiftKey || this.event.altKey
            }, t
        }(), o = function () {
            function t(t) {
                this.elementSelector = t, this._trickle = ae(this._trickle, this), this.value = 0, this.content = "", this.speed = 300, this.opacity = .99, this.install()
            }
            var e;
            return e = "turbolinks-progress-bar", t.prototype.install = function () {
                return this.element = document.querySelector(this.elementSelector), this.element.classList.add(e), this.styleElement = document.createElement("style"), document.head.appendChild(this.styleElement), this._updateStyle()
            }, t.prototype.uninstall = function () {
                return this.element.classList.remove(e), document.head.removeChild(this.styleElement)
            }, t.prototype.start = function () {
                return this.advanceTo(5)
            }, t.prototype.advanceTo = function (t) {
                var e;
                if (t > (e = this.value) && 100 >= e) {
                    if (this.value = t, this._updateStyle(), 100 === this.value) return this._stopTrickle();
                    if (this.value > 0) return this._startTrickle()
                }
            }, t.prototype.done = function () {
                return this.value > 0 ? (this.advanceTo(100), this._reset()) : void 0
            }, t.prototype._reset = function () {
                var t;
                return t = this.opacity, setTimeout(function (t) {
                    return function () {
                        return t.opacity = 0, t._updateStyle()
                    }
                }(this), this.speed / 2), setTimeout(function (e) {
                    return function () {
                        return e.value = 0, e.opacity = t, e._withSpeed(0, function () {
                            return e._updateStyle(!0)
                        })
                    }
                }(this), this.speed)
            }, t.prototype._startTrickle = function () {
                return this.trickling ? void 0 : (this.trickling = !0, setTimeout(this._trickle, this.speed))
            }, t.prototype._stopTrickle = function () {
                return delete this.trickling
            }, t.prototype._trickle = function () {
                return this.trickling ? (this.advanceTo(this.value + Math.random() / 2), setTimeout(this._trickle, this.speed)) : void 0
            }, t.prototype._withSpeed = function (t, e) {
                var n, i;
                return n = this.speed, this.speed = t, i = e(), this.speed = n, i
            }, t.prototype._updateStyle = function (t) {
                return null == t && (t = !1), t && this._changeContentToForceRepaint(), this.styleElement.textContent = this._createCSSRule()
            }, t.prototype._changeContentToForceRepaint = function () {
                return this.content = "" === this.content ? " " : ""
            }, t.prototype._createCSSRule = function () {
                return "" + this.elementSelector + "." + e + "::before {\n  content: '" + this.content + "';\n  position: fixed;\n  top: 0;\n  left: 0;\n  z-index: 2000;\n  background-color: #0076ff;\n  height: 3px;\n  opacity: " + this.opacity + ";\n  width: " + this.value + "%;\n  transition: width " + this.speed + "ms ease-out, opacity " + this.speed / 2 + "ms ease-in;\n  transform: translate3d(0,0,0);\n}"
            }, t
        }(), c = function (t) {
            return setTimeout(t, 500)
        }, R = function () {
            return document.addEventListener("DOMContentLoaded", function () {
                return J(i.CHANGE), J(i.UPDATE)
            }, !0)
        }, _ = function () {
            return "undefined" != typeof jQuery ? jQuery(document).on("ajaxSuccess", function (t, e) {
                return jQuery.trim(e.responseText) ? J(i.UPDATE) : void 0
            }) : void 0
        }, j = function (t) {
            var e, i;
            return (null != (i = t.state) ? i.turbolinks : void 0) ? (e = L[new n(t.state.url).absolute]) ? (d(), k(e)) : Z(t.target.location.href) : void 0
        }, x = function () {
            return Q(), U(), document.addEventListener("click", e.installHandlerLast, !0), window.addEventListener("hashchange", function () {
                return Q(), U()
            }, !1), c(function () {
                return window.addEventListener("popstate", j, !1)
            })
        }, C = void 0 !== window.history.state || navigator.userAgent.match(/Firefox\/2[6|7]/), u = window.history && window.history.pushState && window.history.replaceState && C, a = !navigator.userAgent.match(/CriOS\//), $ = "GET" === (ee = P("request_method")) || "" === ee, l = u && a && $, s = document.addEventListener && document.createEvent, s && (R(), _()), l ? (Z = S, x()) : Z = function (t) {
            return document.location.href = t
        }, this.Turbolinks = {
            visit: Z,
            pagesCached: I,
            enableTransitionCache: b,
            enableProgressBar: w,
            allowLinkExtensions: r.allowExtensions,
            supported: l,
            EVENTS: m(i)
        }
    }.call(this),
    function (t) {
        "function" == typeof define && define.amd ? define(["jquery"], t) : t(jQuery)
    }(function (t) {
        function e() {
            var e = n(this),
                a = o.settings;
            return isNaN(e.datetime) || (0 == a.cutoff || Math.abs(r(e.datetime)) < a.cutoff) && t(this).text(i(e.datetime)), this
        }

        function n(e) {
            if (e = t(e), !e.data("timeago")) {
                e.data("timeago", {
                    datetime: o.datetime(e)
                });
                var n = t.trim(e.text());
                o.settings.localeTitle ? e.attr("title", e.data("timeago").datetime.toLocaleString()) : !(n.length > 0) || o.isTime(e) && e.attr("title") || e.attr("title", n)
            }
            return e.data("timeago")
        }

        function i(t) {
            return o.inWords(r(t))
        }

        function r(t) {
            return (new Date).getTime() - t.getTime()
        }
        t.timeago = function (e) {
            return i(e instanceof Date ? e : "string" == typeof e ? t.timeago.parse(e) : "number" == typeof e ? new Date(e) : t.timeago.datetime(e))
        };
        var o = t.timeago;
        t.extend(t.timeago, {
            settings: {
                refreshMillis: 6e4,
                allowPast: !0,
                allowFuture: !1,
                localeTitle: !1,
                cutoff: 0,
                strings: {
                    prefixAgo: null,
                    prefixFromNow: null,
                    suffixAgo: "ago",
                    suffixFromNow: "from now",
                    inPast: "any moment now",
                    seconds: "less than a minute",
                    minute: "about a minute",
                    minutes: "%d minutes",
                    hour: "about an hour",
                    hours: "about %d hours",
                    day: "a day",
                    days: "%d days",
                    month: "about a month",
                    months: "%d months",
                    year: "about a year",
                    years: "%d years",
                    wordSeparator: " ",
                    numbers: []
                }
            },
            inWords: function (e) {
                function n(n, r) {
                    var o = t.isFunction(n) ? n(r, e) : n,
                        a = i.numbers && i.numbers[r] || r;
                    return o.replace(/%d/i, a)
                }
                if (!this.settings.allowPast && !this.settings.allowFuture) throw "timeago allowPast and allowFuture settings can not both be set to false.";
                var i = this.settings.strings,
                    r = i.prefixAgo,
                    o = i.suffixAgo;
                if (this.settings.allowFuture && 0 > e && (r = i.prefixFromNow, o = i.suffixFromNow), !this.settings.allowPast && e >= 0) return this.settings.strings.inPast;
                var a = Math.abs(e) / 1e3,
                    s = a / 60,
                    u = s / 60,
                    l = u / 24,
                    c = l / 365,
                    d = 45 > a && n(i.seconds, Math.round(a)) || 90 > a && n(i.minute, 1) || 45 > s && n(i.minutes, Math.round(s)) || 90 > s && n(i.hour, 1) || 24 > u && n(i.hours, Math.round(u)) || 42 > u && n(i.day, 1) || 30 > l && n(i.days, Math.round(l)) || 45 > l && n(i.month, 1) || 365 > l && n(i.months, Math.round(l / 30)) || 1.5 > c && n(i.year, 1) || n(i.years, Math.round(c)),
                    f = i.wordSeparator || "";
                return void 0 === i.wordSeparator && (f = " "), t.trim([r, d, o].join(f))
            },
            parse: function (e) {
                var n = t.trim(e);
                return n = n.replace(/\.\d+/, ""), n = n.replace(/-/, "/").replace(/-/, "/"), n = n.replace(/T/, " ").replace(/Z/, " UTC"), n = n.replace(/([\+\-]\d\d)\:?(\d\d)/, " $1$2"), n = n.replace(/([\+\-]\d\d)$/, " $100"), new Date(n)
            },
            datetime: function (e) {
                var n = t(e).attr(o.isTime(e) ? "datetime" : "title");
                return o.parse(n)
            },
            isTime: function (e) {
                return "time" === t(e).get(0).tagName.toLowerCase()
            }
        });
        var a = {
            init: function () {
                var n = t.proxy(e, this);
                n();
                var i = o.settings;
                i.refreshMillis > 0 && (this._timeagoInterval = setInterval(n, i.refreshMillis))
            },
            update: function (n) {
                var i = o.parse(n);
                t(this).data("timeago", {
                    datetime: i
                }), o.settings.localeTitle && t(this).attr("title", i.toLocaleString()), e.apply(this)
            },
            updateFromDOM: function () {
                t(this).data("timeago", {
                    datetime: o.parse(t(this).attr(o.isTime(this) ? "datetime" : "title"))
                }), e.apply(this)
            },
            dispose: function () {
                this._timeagoInterval && (window.clearInterval(this._timeagoInterval), this._timeagoInterval = null)
            }
        };
        t.fn.timeago = function (t, e) {
            var n = t ? a[t] : a.init;
            if (!n) throw new Error("Unknown function name '" + t + "' for timeago");
            return this.each(function () {
                n.call(this, e)
            }), this
        }, document.createElement("abbr"), document.createElement("time")
    }), window.requestAnimFrame = function () {
        return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function (t) {
            window.setTimeout(t, 16.667)
        }
    }(), window.requestInterval = function (t, e) {
        function n() {
            var o = (new Date).getTime(),
                a = o - i;
            a >= e && (t.call(), i = (new Date).getTime()), r.value = requestAnimFrame(n)
        }
        if (!(window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame)) return window.setInterval(t, e);
        var i = (new Date).getTime(),
            r = {};
        return r.value = requestAnimFrame(n), r
    }, window.clearRequestInterval = function (t) {
        window.cancelAnimationFrame ? window.cancelAnimationFrame(t.value) : window.webkitCancelRequestAnimationFrame ? window.webkitCancelRequestAnimationFrame(t.value) : window.mozCancelRequestAnimationFrame ? window.mozCancelRequestAnimationFrame(t.value) : window.oCancelRequestAnimationFrame ? window.oCancelRequestAnimationFrame(t.value) : window.msCancelRequestAnimationFrame ? msCancelRequestAnimationFrame(t.value) : clearInterval(t)
    }, window.requestTimeout = function (t, e) {
        function n() {
            var o = (new Date).getTime(),
                a = o - i;
            a >= e ? t.call() : r.value = requestAnimFrame(n)
        }
        if (!(window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame)) return window.setTimeout(t, e);
        var i = (new Date).getTime(),
            r = {};
        return r.value = requestAnimFrame(n), r
    }, window.clearRequestTimeout = function (t) {
        window.cancelAnimationFrame ? window.cancelAnimationFrame(t.value) : window.webkitCancelRequestAnimationFrame ? window.webkitCancelRequestAnimationFrame(t.value) : window.mozCancelRequestAnimationFrame ? window.mozCancelRequestAnimationFrame(t.value) : window.oCancelRequestAnimationFrame ? window.oCancelRequestAnimationFrame(t.value) : window.msCancelRequestAnimationFrame ? msCancelRequestAnimationFrame(t.value) : clearTimeout(t)
    };
var debounce = function (t, e, n) {
    var i = {};
    return function () {
        var r = this,
            o = arguments,
            a = function () {
                i = {}, n || t.apply(r, o)
            },
            s = n && !i;
        clearRequestTimeout(i), i = requestTimeout(a, e), s && t.apply(r, o)
    }
};
$.extend($.easing, {
    easeInOutCubic: function (t, e, n, i, r) {
        return (e /= r / 2) < 1 ? i / 2 * e * e * e + n : i / 2 * ((e -= 2) * e * e + 2) + n
    }
}),
    function (t) {
        function e() {
            t(document).on("page:change", n)
        }

        function n() {
            if (ga("send", "pageview"), "function" == typeof TTDUniversalPixelApi) {
                var t = new TTDUniversalPixelApi;
                t.init("17326go", ["vf5tbm4"], "https://insight.adsrvr.org/track/up", "ttdUniversalPixelTag487f21533bec40bfaf88d143f2c832f1")
            }
        }
        t(e)
    }(jQuery),
    function (t, e, n, i, r, o, a) {
        t.GoogleAnalyticsObject = r, t[r] = t[r] || function () {
            (t[r].q = t[r].q || []).push(arguments)
        }, t[r].l = 1 * new Date, o = e.createElement(n), a = e.getElementsByTagName(n)[0], o.async = 1, o.src = i, a.parentNode.insertBefore(o, a)
    }(window, document, "script", "", "ga"), ga("create", "UA-1852619-4", "brooklynbrewerymash.com"), ga("send", "pageview");
var ADD_THIS = function (t) {
    function e() {
        t(document).on("page:change", n.addit)
    }
    var n = {
        TWITTER_TEMPLATE: "{{title}} {{url}} via @BrooklynBrewery",
        addit: function () {
            "undefined" != typeof addthis && (addthis.toolbox("#share"), window.addthis_share = {
                templates: {
                    twitter: "undefined" != typeof TWITTER_TEMPLATE ? TWITTER_TEMPLATE : ADD_THIS.TWITTER_TEMPLATE
                }
            })
        }
    };
    return t(e), n
}(jQuery),
    addthis_config = {
        data_track_addressbar: !1
    },
    addthis_share = {
        templates: ADD_THIS.TWITTER_TEMPLATE
    };
Modernizr.load([{
    load: "",
    complete: ADD_THIS.addit
}]),
    function (t) {
        function e(e, n, i, r) {
            var o = t();
            return t.each(a, function (t, a) {
                var s = a.offset().top,
                    u = a.offset().left,
                    l = u + a.width(),
                    c = s + a.height(),
                    d = !(u > n || r > l || s > i || e > c);
                d && o.push(a)
            }), o
        }

        function n() {
            ++l;
            var n = o.scrollTop(),
                i = o.scrollLeft(),
                r = i + o.width(),
                a = n + o.height(),
                u = e(n + c.top, r + c.right, a + c.bottom, i + c.left);
            t.each(u, function (t, e) {
                var n = e.data("scrollSpy:ticks");
                "number" != typeof n && e.triggerHandler("scrollSpy:enter"), e.data("scrollSpy:ticks", l)
            }), t.each(s, function (t, e) {
                var n = e.data("scrollSpy:ticks");
                "number" == typeof n && n !== l && (e.triggerHandler("scrollSpy:exit"), e.data("scrollSpy:ticks", null))
            }), s = u
        }

        function i() {
            o.trigger("scrollSpy:winSize")
        }

        function r(t, e, n) {
            var i, r, o, a = null,
                s = 0;
            n || (n = {});
            var u = function () {
                s = n.leading === !1 ? 0 : d(), a = null, o = t.apply(i, r), i = r = null
            };
            return function () {
                var l = d();
                s || n.leading !== !1 || (s = l);
                var c = e - (l - s);
                return i = this, r = arguments, 0 >= c ? (clearTimeout(a), a = null, s = l, o = t.apply(i, r), i = r = null) : a || n.trailing === !1 || (a = setTimeout(u, c)), o
            }
        }
        var o = t(window),
            a = [],
            s = [],
            u = !1,
            l = 0,
            c = {
                top: 0,
                right: 0,
                bottom: 0,
                left: 0
            },
            d = Date.now || function () {
                return (new Date).getTime()
            };
        t.scrollSpy = function (e, i) {
            e = t(e), e.each(function (e, n) {
                a.push(t(n))
            }), i = i || {
                throttle: 100
            }, c.top = i.offsetTop || 0, c.right = i.offsetRight || 0, c.bottom = i.offsetBottom || 0, c.left = i.offsetLeft || 0;
            var s = r(n, i.throttle || 100),
                l = function () {
                    t(document).ready(s)
                };
            return u || (o.on("scroll", l), o.on("resize", l), u = !0), setTimeout(l, 0), e
        }, t.winSizeSpy = function (e) {
            return t.winSizeSpy = function () {
                return o
            }, e = e || {
                throttle: 100
            }, o.on("resize", r(i, e.throttle || 100))
        }, t.fn.scrollSpy = function (e) {
            return t.scrollSpy(t(this), e)
        }
    }(jQuery),
    function (t) {
        "use strict";
        t.scrollTo = function (e, n) {
            function i() {
                o.$el.off("click", r).on("click", r)
            }

            function r(e) {
                e.preventDefault();
                var n = t(t(e.currentTarget).data("target")),
                    i = n.offset().top + o.$el.data("offset");
                t("html,body").stop().animate({
                    scrollTop: i
                }, 400, "easeInOutCubic")
            }
            var o = this;
            o.$el = n, i()
        }, t.fn.scrollTo = function (e) {
            return this.each(function (n, i) {
                var r = t(i),
                    o = "scrollTo";
                r.data(o) || r.data(o, new t.scrollTo(i, r, e))
            })
        }
    }(jQuery),
    function (t) {
        "use strict";
        t.pressQuotes = function (e, n) {
            function i() {
                n.find("nav a").off("click", r).on("click", r), n.find("nav a:first-child").addClass(l), t(window).off("resize", o).on("resize", o).resize()
            }

            function r(e) {
                if (null !== s) {
                    var i = s;
                    s.stop().fadeTo(150, 0, function () {
                        i.hide()
                    })
                }
                u = t(e.currentTarget).data("idx") + 1, s = n.find("li:nth-child(" + u + ")"), s.stop().fadeTo(250, 1), n.find("nav a." + l).removeClass(l), n.find("nav a:nth-child(" + u + ")").addClass(l)
            }

            function o() {
                n.height(n.outerWidth())
            }
            var a = this;
            a.$el = n;
            var s = n.find("li:first-child"),
                u = (n.find("li").length, 0),
                l = "on";
            i()
        }, t.fn.pressQuotes = function (e) {
            return this.each(function (n, i) {
                var r = t(i),
                    o = "pressQuotes";
                r.data(o) || r.data(o, new t.pressQuotes(i, r, e))
            })
        }
    }(jQuery);
var tag = document.createElement("script"),
    firstScriptTag = document.getElementsByTagName("script")[0];
//tag.src = "https://www.youtube.com/iframe_api",
tag.src = "",
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
var HOME = function (t, e) {
    function n() {
        t("body").hasClass("home") && (g = t(window), y = t(document), v = t(".hero"), w = t("#city-nav-wrap"), v.off("scrollSpy:enter", o).off("scrollSpy:exit", a).on("scrollSpy:enter", o).on("scrollSpy:exit", a).scrollSpy(), p = v.find(".bg-img"), v.find("." + S).off(T, c).on(T, c), v.find(".what").off(T, f).on(T, f), t(".scroll-to").scrollTo(), t(".press-quotes").pressQuotes(), g.off("resize", u).on("resize", u), w.find(".cities").imagesLoaded(i), "undefined" != typeof YT && HOME.initYouTube())
    }

    function i() {
        var t = w.find(".about").outerHeight(),
            e = w.find(".cities li:first").outerHeight();
        w.find(".cities").css({
            paddingTop: t - e
        })
    }

    function r() {
        g !== e && (a(), g.off("resize", u), b = null)
    }

    function o() {
        g.off("scroll", l).on("scroll", l), l()
    }

    function a() {
        g !== e && g.off("scroll", l)
    }

    function s(t) {
        27 === t.keyCode && d()
    }

    function u() {
        i()
    }

    function l() {
        var t = Math.max(0, 30 * ((g.scrollTop() - v.offset().top) / g.height()));
        p.css({
            marginTop: t + "%"
        })
    }

    function c(t) {
        t.preventDefault(), v.toggleClass(S), v.hasClass(S) ? b.playVideo() : b.pauseVideo()
    }

    function d() {
        var e = t(".overlay-mash");
        e.off(T, d).removeClass("on"), y.off("keydown", s)
    }

    function f() {
        var e = t(".overlay-mash");
        e.off(T, d).on(T, d).addClass("on"), y.off("keydown", s).on("keydown", s)
    }

    function h() {
        v.removeClass(S)
    }

    function m() {
        v.removeClass(S)
    }
    var p, v, g, y, w, b, E = {},
        T = "click",
        S = "play";
    return E.initYouTube = function () {
        b = new YT.Player("trailer-video", {
            videoId: "E3BjM6kvGJE",
            events: {
                onStateChange: HOME.onPlayerStateChange
            }
        })
    }, E.onPlayerStateChange = function (t) {
        switch (t.data) {
            case YT.PlayerState.PAUSED:
                h();
                break;
            case YT.PlayerState.ENDED:
                m()
        }
    }, t(document).on("page:change", n).on("page:before-unload", r), E
}(jQuery),
    INSTAGRAM = function (t) {
        function e(e) {
            i = t(e.currentTarget), i.addClass("load")
        }

        function n(e, n) {
            i = t(e.currentTarget), i.removeClass("load"), ++s, i.attr("href", i.attr("href").replace(/(\d+)/g, s)), r.css({
                overflow: "hidden"
            }), o.append(n).animate({
                top: -r.height()
            }, function () {
                o.children().remove(), o.html(n).css({
                    top: 0
                }), r.css({
                    overflow: "visible"
                })
            })
        }
        var i, r, o, a = {},
            s = 2;
        return a.resize = function () {
            r.height(r.width())
        }, a.setup = function () {
            r = t(".instagram-wrap"), o = t("#instagrams"), t("#more-instagram").on("ajax:before", e).on("ajax:success", n)
        }, a
    }(jQuery);
$(function () {
    $(document).on("page:fetch", function () {
        NProgress.start()
    }).on("page:change", function () {
        NProgress.done()
    }).on("page:restore", function () {
        NProgress.remove()
    })
});
var APP = function (t, e) {
    "use strict";

    function n() {
        t(document).on("page:load", i), i()
    }

    function i() {
        p = t("#city-toggle"), t("a[href=#]").attr("href", "javascript:;"), t("a[href^=http]").not(".no-pop").click(d), t(".city-toggle").off(v, s).on(v, s), t("#newsletter-form").off("ajax:beforeSend", r).off("ajax:success", o).on("ajax:beforeSend", r).on("ajax:success", o), t(".timeago").timeago(), INSTAGRAM.setup(), t(window).off("resize", debounce(a, 500)).on("resize", debounce(a, 500)).resize(), t(".event-list").imagesLoaded(a), t(".main-footer .top").css({
            backgroundImage: 'url("assets/images/parallax_2.jpg")'
        }), Modernizr.input.placeholder || f()
    }

    function r(e) {
        t(e.currentTarget).slideUp()
    }

    function o(e, n) {
        h = t(e.currentTarget), h.children().remove(), h.html('<p class="msg">' + n.msg + "</p>").slideDown()
    }

    function a() {
        INSTAGRAM.resize();
        var e = t(".event-list a"),
            n = 0;
        e.each(function (e, i) {
            h = t(i), h.height("auto"), n = Math.max(n, h.outerHeight())
        }), e.height(n)
    }

    function s() {
        p.hasClass(g) ? u() : l()
    }

    function u() {
        h = t(".city-nav"), p.removeClass(g), h.off(v, s).removeClass(g), t(document).off("keydown", c)
    }

    function l() {
        var e = t(".city-nav");
        p.addClass(g), e.off(v, s).on(v, s).addClass(g), t(document).off("keydown", c).on("keydown", c)
    }

    function c(t) {
        27 === t.keyCode && u()
    }

    function d(t) {
        var e = this.getAttribute("href");
        window.location.host !== e.split("/")[2] && (t.preventDefault(), window.open(e))
    }

    function f() {
        var n = "placeholder";
        t("input[" + n + '!=""]').each(function (i, r) {
            h = t(r);
            var o = h.attr(n);
            o !== e && "password" !== h.attr("type") && h.focus(function () {
                t(this).removeClass(n), this.value === o && (this.value = "")
            }).blur(function () {
                "" === t.trim(this.value) && (t(this).addClass(n), this.value = o)
            }).blur()
        })
    }
    var h, m = {
        stop: function (t) {
            t.stopPropagation()
        }
    },
        p = null,
        v = "click",
        g = "on";
    return t(n), m
}(jQuery);