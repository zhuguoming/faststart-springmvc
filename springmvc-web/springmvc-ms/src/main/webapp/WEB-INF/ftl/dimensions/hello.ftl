<!DOCTYPE html>
<#assign S_URL=request.contextPath />
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <style>
        .float {
            left: 0;
            position: fixed;
            top: 10%;
            width: 100%;
            text-align: center;
            z-index: 100;
            font-size:40px;
        }

        .bg {
            position: fixed;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<img class="bg" src='${S_URL}/static/img/kobi.jpg'/>
<div class="float">
    <a href="${S_URL}/blog">SEE YOU</a>
</div>

</body>
</html>