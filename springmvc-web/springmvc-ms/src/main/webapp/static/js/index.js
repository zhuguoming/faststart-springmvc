/**
 项目JS主入口
 以依赖Layui的layer和form模块为例
 **/
layui.define(['form', 'layer', 'element', 'layedit', 'laydate', 'upload'], function (exports) {
    var layer = layui.layer,
        element = layui.element,
        layedit = layui.layedit,
        laydate = layui.laydate,
        upload = layui.upload,
        form = layui.form;
    $(function () {
        // 关闭加载提示
        if (self.frameElement != null && self.frameElement.tagName == "IFRAME") {
            parent.layer.closeAll();
        }
    });

    //TABS切换
    $('.layui-nav').on('click', '.tab-open', function () {
        opened_tabs = new Array();
        $(".layui-tab-title li").each(function (key, value) {
            opened_tabs[key] = $(value).attr('lay-id');
        });
        lay_id = String($(this).data('id'));
        has_tab = $.inArray(lay_id, opened_tabs);
        if (has_tab != -1) {
            element.tabChange('page-tab', $(this).data('id'));
        } else {
            element.tabAdd('page-tab', {
                title: $(this).data('name').trim(),
                content: "<iframe class='tab-main' src='" + $(this).data('url') + "'></iframe>"
                , id: $(this).data('id')
            });
            element.tabChange('page-tab', $(this).data('id'));
            layer.msg('页面加载中，请稍后。。。', {
                icon: 16,
                time: false
            });
            changeIframeHeight();
        }
    });

    $('#go-dashboard').on('click', function (e) {
        element.tabChange('page-tab', 0);
    });

    /**
     * 后台侧边菜单选中状态
     */
    $('.layui-nav-item').find('a').removeClass('layui-this');
    $('.layui-nav-tree').find('a[href*="' + GV.current_controller + '"]').parent().addClass('layui-this').parents('.layui-nav-item').addClass('layui-nav-itemed');

    /**
     * AJAX全局设置
     */
    $.ajaxSetup({
        type: "post",
        dataType: "json"
    });

    /**
     * 通用表单提交(AJAX方式)
     */
    form.on('submit(DoAjax)', function (data) {
        $.ajax({
            url: data.form.action,
            type: data.form.method,
            data: $(data.form).serialize(),
            success: function (info) {
                if (info.code === 1) {
                    setTimeout(function () {
                        location.href = info.url;
                    }, 1000);
                }
                layer.msg(info.msg);
            }
        });
        return false;
    });

    /**
     * 通用全选
     */
    $('.check-all').on('click', function () {
        $(this).parents('table').find('input[type="checkbox"]').prop('checked', $(this).prop('checked'));
    });

    /**
     * 通用日期时间选择
     */
        laydate.render({
            elem: "#datetime",
            value: this.value,
            type: 'datetime'
        });

    /**
     * 通用批量处理（审核、取消审核、删除）
     */
    $('.ajax-action').on('click', function () {
        var _action = $(this).data('action');
        layer.open({
            shade: false,
            content: '确定执行此操作？',
            btn: ['确定', '取消'],
            yes: function (index) {
                $.ajax({
                    url: _action,
                    data: $('.ajax-form').serialize(),
                    success: function (info) {
                        if (info.code === 1) {
                            setTimeout(function () {
                                location.href = info.url;
                            }, 1000);
                        }
                        layer.msg(info.msg);
                    }
                });
                layer.close(index);
            }
        });

        return false;
    });

    /**
     * 通用删除
     */
    $('.ajax-delete').on('click', function () {
        var _href = $(this).attr('href');
        layer.open({
            shade: false,
            content: '确定删除？',
            btn: ['确定', '取消'],
            yes: function (index) {
                $.ajax({
                    url: _href,
                    type: "get",
                    success: function (info) {
                        if (info.code === 1) {
                            setTimeout(function () {
                                location.href = info.url;
                            }, 1000);
                        }
                        layer.msg(info.msg);
                    }
                });
                layer.close(index);
            }
        });

        return false;
    });

    //监听指定开关
    form.on('switch(DoSwitch)', function (data) {
        var status;
        if (data.elem.checked) {
            status = 1;
        } else {
            status = 0;
        }
        $.ajax({
            url: data.form.action,
            type: data.form.method,
            data: {status: status},
            success: function (info) {
                if (info.code === 1) {
                    setTimeout(function () {
                        location.href = info.url;
                    }, 1000);
                }
                layer.msg(info.msg);
            }
        });
    });

    /**
     * 通用表单提交(AJAX方式)不刷新确定跳转URL
     */
    $('.ajax-data-url').on('click', function () {
        var _url = $(this).data('url');
        $.ajax({
            url: _url,
            type: 'GET',
            success: function (info) {
                //console.log(info);
                if (info.code === 1) {
                    layer.msg(info.msg, {icon: 1, shade: 0.3, shadeClose: true});
                    if (info.data !== '0') {
                        setTimeout(function () {
                            location.href = info.url;
                        }, 1000);
                    }
                } else {
                    //询问框
                    layer.confirm(info.msg, {
                        btn: ['确定', '取消'] //按钮
                    }, function () {
                        if (info.data !== '0') {
                            setTimeout(function () {
                                location.href = info.url;
                            }, 1000);
                        } else {
                            layer.closeAll();
                        }
                    });
                }
            }
        });
        return false;
    });


    /**
     * 通用删除
     */
    $('.ajax-data-del').on('click', function () {
        var _url = $(this).data('url');
        layer.open({
            shade: false,
            content: '确定删除？',
            btn: ['确定', '取消'],
            yes: function (index) {
                $.ajax({
                    url: _url,
                    type: "get",
                    success: function (info) {
                        if (info.code === 1) {
                            setTimeout(function () {
                                location.href = info.url;
                            }, 1000);
                        }
                        layer.msg(info.msg);
                    }
                });
                layer.close(index);
            }
        });

        return false;
    });

    /**
     * 清除缓存
     */
    $('#clear-cache').on('click', function (event) {
        event.preventDefault();
        var _url = $(this).data('url');
        if (_url !== 'undefined') {
            $.ajax({
                url: _url,
                success: function (data) {
                    if (data.code === 1) {
                        setTimeout(function () {
                            location.href = location.pathname;
                        }, 3000);
                    }
                    layer.msg(data.msg);
                }
            });
        }
        return false;
    });

    /**
     * 重建缓存
     */
    $('#re-cache').on('click', function (event) {
        event.preventDefault();
        var _url = $(this).data('url');
        if (_url !== 'undefined') {
            $.ajax({
                url: _url,
                success: function (data) {
                    if (data.code === 1) {
                        setTimeout(function () {
                            location.href = location.pathname;
                        }, 3000);
                    }
                    layer.msg(data.msg);
                }
            });
        }
        return false;
    });

    exports('index', {}); //注意，这里是模块输出的核心，模块名必须和use时的模块名一致
});