
<!DOCTYPE html>
<html lang="zh-cn">
<#assign S_URL=request.contextPath />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${S_URL}/static/layui/css/layui.css">
    <link rel="stylesheet" href="${S_URL}/static/css/style.css">
    <link rel="stylesheet" href="${S_URL}/static/css/index.css">
    <style>
        iframe{
            overflow-y:scroll;
        }
    </style>
</head>
<body>
<div class="layui-layout  layui-layout-admin">
    <div class="alone-header header layui-header">
        <div>
            <a class="logo" href="">
                <img src="${S_URL}/static/img/logo.jpg" alt="zgm_bolg">
            </a>
            <div class="layui-main">
                <div class="layui-form switch_btn">
                    <a href="#" class="tpl-header-switch-button">
                        <img src="${S_URL}/static/img/switch.png" alt="打开/关闭侧边栏">
                    </a>
                </div>
                <ul class="layui-nav">
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon">&#xe612;</i> admin</a>
                        <dl class="layui-nav-child">
                            <dd><a href="">编辑</a></dd>
                            <dd><a href="">退出</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="alone-side layui-side side layui-bg-black">
        <div class="layui-side-scroll">

            <ul class="layui-nav layui-nav-tree site-demo-nav">

                <li class="layui-nav-item layui-nav-title">
                    <a>管理菜单</a>
                </li>
                <li class="layui-nav-item">
                    <a class="tab-open" href="javascript:;" data-id="11386442" data-url="hello.ftl" data-name="后台首页"><i class="layui-icon">&#xe68e;</i>  后台首页</a>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;" data-id="11386442_1" data-url="admin/System/clear.html" data-name="清除缓存" id="clear-cache"><i class="layui-icon">&#xe640;</i>  清除缓存</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe620;</i> 系统配置</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="2" data-url="admin/System/siteConfig.html" data-name="站点配置"> 站点配置</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="73" data-url="hello.ftl" data-name="修改密码"> 修改密码</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="75" data-url="hello.ftl" data-name="系统首页"> 系统首页</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe632;</i> 菜单管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="6" data-url="hello.ftl" data-name="后台菜单"> 后台菜单</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="12" data-url="hello.ftl" data-name="导航管理"> 导航管理</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="102" data-url="hello.ftl" data-name="前台菜单"> 前台菜单</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe60a;</i> 内容管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="13" data-url="hello.ftl" data-name="栏目管理"> 栏目管理</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="15" data-url="hello.ftl" data-name="文章管理"> 文章管理</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="76" data-url="hello.ftl" data-name="商品管理"> 商品管理</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe63c;</i> 订单管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="84" data-url="hello.ftl" data-name="订单列表"> 订单列表</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe645;</i> 短信管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="86" data-url="hello.ftl" data-name="发送记录"> 发送记录</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe756;</i> 访问控制</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="91" data-url="hello.ftl" data-name="拦截记录"> 拦截记录</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="92" data-url="hello.ftl" data-name="规则管理"> 规则管理</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="93" data-url="hello.ftl" data-name="信息反馈"> 信息反馈</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="94" data-url="hello.ftl" data-name="全局设置"> 全局设置</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="95" data-url="hello.ftl" data-name="拦截方式"> 拦截方式</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe621;</i> 单页管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="97" data-url="hello.ftl" data-name="页面类别"> 页面类别</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="98" data-url="hello.ftl" data-name="单页列表"> 单页列表</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe60e;</i> 数据缓存</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="100" data-url="hello.ftl" data-name="缓存列表"> 缓存列表</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="101" data-url="admin/SystemCache/add.html" data-name="增加缓存"> 增加缓存</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe63b;</i> 在线支付</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="110" data-url="hello.ftl" data-name="支付渠道"> 支付渠道</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe612;</i> 用户管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="17" data-url="hello.ftl" data-name="普通用户"> 普通用户</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="18" data-url="hello.ftl" data-name="管理员"> 管理员</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="19" data-url="hello.ftl" data-name="权限组"> 权限组</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe609;</i> 扩展管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="55" data-url="hello.ftl" data-name="轮播分类"> 轮播分类</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="56" data-url="hello.ftl" data-name="轮播图管理"> 轮播图管理</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="57" data-url="hello.ftl" data-name="友情链接"> 友情链接</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="103" data-url="hello.ftl" data-name="数据备份"> 数据备份</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="layui-icon">&#xe600;</i> 邮件管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="89" data-url="hello.ftl" data-name="邮件模板"> 邮件模板</a>
                        </dd>
                    </dl>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="tab-open" href="javascript:;" data-id="88" data-url="hello.ftl" data-name="邮箱配置"> 邮箱配置</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="height: 30px; text-align: center"></li>
            </ul>

        </div>
    </div>

    <div class="alone-body body layui-body">
        <div class="view-body">
            <div class="layui-tab layui-tab-card" lay-allowclose="true" lay-filter="page-tab" id="page-content">
                <ul class="layui-tab-title">
                    <li class="layui-this" lay-id="11386442">后台首页</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe class="tab-main" src="${S_URL}/hello"></iframe>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="alone-footer layui-footer footer">
        <div class="layui-main">
            <p>&copy; 2017 <a href="">MyAdmin</a></p>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${S_URL}/static/jquery/jquery.js"></script>
<script src="${S_URL}/static/layui/layui.js"></script>

<script src="${S_URL}/static/js/footer.js"></script>
<script>
    var GV = {
        current_controller: "admin/index"
    };
    layui.config({
        base: 'static/js/' //你的模块目录
    }).use('index'); //加载入口
</script>

</body>
</html>