//easyui控件的样式
$(function () {
    $('input.easyui-validatebox').validatebox({
        tipOptions: {	// the options to create tooltip
            showEvent: 'mouseenter',
            hideEvent: 'mouseleave',
            showDelay: 0,
            hideDelay: 0,
            zIndex: '',
            onShow: function () {
                if (!$(this).hasClass('validatebox-invalid')) {
                    if ($(this).tooltip('options').prompt) {
                        $(this).tooltip('update', $(this).tooltip('options').prompt);
                    } else {
                        $(this).tooltip('tip').hide();
                    }
                } else {
                    $(this).tooltip('tip').css({
                        color: '#000',
                        borderColor: '#CC9933',
                        backgroundColor: '#FFFFCC'
                    });
                }
            },
            onHide: function () {
                if (!$(this).tooltip('options').prompt) {
                    $(this).tooltip('destroy');
                }
            }
        }
    }).tooltip({
        position: 'right',
        content: function () {
            var opts = $(this).validatebox('options');
            return opts.prompt;
        },
        onShow: function () {
            $(this).tooltip('tip').css({
                color: '#000',
                borderColor: '#CC9933',
                backgroundColor: '#FFFFCC'
            });
        }
    });
});
$(function () {
    $('#cc').combo({
        required: true,
        editable: false
    });
    $('#sp').appendTo($('#cc').combo('panel'));
    $('#sp input').click(function () {
        var v = $(this).val();
        var s = $(this).next('span').text();
        $('#cc').combo('setValue', v).combo('setText', s).combo('hidePanel');
    });
});
//验证中文的JS代码
$.extend($.fn.validatebox.defaults.rules, {
    ChineseLength: {
        validator: function (value, param) {
                    
            var reg = /^[\u4e00-\u9fa5]{0,}$/;
            if (reg.exec(value)) {
                return value.length >= param[0];
            }

            else {

                return false;
            }
                   
        },
        message: 'Please enter at least {0} characters.'
    }
});
//验证经纬度的JS代码
$.extend($.fn.validatebox.defaults.rules, {

    StringLength:{
        validator: function (value, param) {

            var reg = /^[0-9]{1,3}.[0-9]{0,6}|[0-9]{0,2}.[0-9]{0,6}$/;
            if (reg.exec(value)) {
                return value.length >= param[0];
            }

            else {

                return false;
            }

        },
        message: 'Please enter at least {0} characters.'
    }
});
//验证手机号的JS代码
$.extend($.fn.validatebox.defaults.rules, {

    PhoneLength: {
        validator: function (value, param) {

            var reg = /^[1][358][0-9]{9}$/;
            if (reg.exec(value)) {
                return value.length >= param[0];
            }

            else {

                return false;
            }

        },
        message: 'Please enter at least {0} characters.'
    }
});