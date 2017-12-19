<!DOCTYPE html>
<#assign S_URL=request.contextPath />
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<table class="caozuo audit" style="margin-top: 50px;">
<tr>
    <th width="35%">id</th>
    <th  width="35%">姓名</th>
    <th  width="30%">年龄</th>
</tr>

    <#list user as users>
				<tr>
                    <td>${users.age}</td>
                    <td>${users.name}</td>
                    <td>${users.id}</td>
                </tr>
    </#list>
</table>
</html>