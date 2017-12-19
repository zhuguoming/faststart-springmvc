<!DOCTYPE html>
<#assign S_URL=request.contextPath />
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
</head>
<body>
<form method="post" action="${S_URL}/login">
    <div>
        账号:<input id="username" name="username" type="text"/>
        密码:<input id="password" name="password" type="password"/>
        <input type="submit" value="登录"/>
    </div>
</form>

<div>
    ${(message)!""}
</div>
</body>
</html>