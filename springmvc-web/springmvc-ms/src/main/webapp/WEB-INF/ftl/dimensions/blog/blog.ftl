<!DOCTYPE html>
<#assign S_URL=request.contextPath />
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<table class="caozuo audit" style="margin-top: 50px;">
    <tr>
        <th width="20%" style="text-align: center">id</th>
        <th  width="10%" style="text-align: center">姓名</th>
        <th  width="30%" style="text-align: center">发布时间</th>
        <th  width="20%" style="text-align: center">标题</th>
    </tr>

    <#list contents as content>
				<tr>
                    <td>${content.id}</td>
                    <td>${content.name}</td>
                    <td>${(content.time)?string("yyyy-MM-dd HH:mm:ss")}</td>
                    <td onclick="" >${content.title}</td>
                </tr>
    </#list>
</table>
</html>