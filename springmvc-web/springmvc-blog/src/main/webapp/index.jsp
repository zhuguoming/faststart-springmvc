<%@ page contentType="text/html; charset=GB2312" %>
<html>
<head LANG="zh">
    <title>Ê×Ò³</title>
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
<img class="bg" src='<%=request.getContextPath()%>/static/img/desert.jpg'/>
<div class="float">
    <a href="">WELCOME!</a>
</div>

</body>
</html>