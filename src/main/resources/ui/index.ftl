
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="keywords" content="jquery,ui,easy,easyui,web">
    <meta name="description" content="easyui help you build your web page easily!">
    <title>Example project</title>
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/icon.css">
    <script type="text/javascript" src="/resources/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/easyui/jquery.easyui.min.js"></script>
</head>
<body>
<div class="easyui-tabs";">
    <div title="First Tab" style="padding:10px;">
        First Tab
    </div>
    <div title="Пример REST" closable="false" style="padding:10px;">

        <script src="/resources/js/restservice.js"></script>

        <h3>Это простой пример использования REST c помощью Ajax</h3>

        <button type="button" onclick="RestGet()">Метод GET</button>
        <button type="button" onclick="RestPost()">Метод POST</button>
        <button type="button" onclick="RestDelete()">Метод DELETE</button>
        <button type="button" onclick="RestPut()">Метод PUT</button>

        <h2> <a href="rest.ftl">Переход на страницу rest</a></h2>
    </div>
    <div title="Third Tab" iconCls="icon-reload" closable="false" style="padding:10px;">
        Third Tab
    </div>
</div>
</body>
</html>