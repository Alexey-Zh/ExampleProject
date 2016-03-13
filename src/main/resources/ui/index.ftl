
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
    <div title="Пример CRUD" style="padding:10px;">
        <a href="/crud" class="easyui-linkbutton">Переход на CRUD</a>

    </div>
    <div title="Пример REST" closable="false" style="padding:10px;">

        <script src="/resources/js/restservice.js"></script>

        <h3>Это простой пример использования REST c помощью Ajax</h3>

        <div style="padding:5px;background:#fafafa;width:500px;border:1px solid #ccc">
            <a href="#" onclick=RestGet() class="easyui-linkbutton">Метод GET</a>
            <a href="#" onclick=RestPost() class="easyui-linkbutton">Метод POST</a>
            <a href="#" onclick=RestDelete() class="easyui-linkbutton">Метод DELETE</a>
            <a href="#" onclick=RestPut() class="easyui-linkbutton">Метод PUT</a>
        </div>

        <br/>
        <br/>
        <br/>
        <a href="/rest" class="easyui-linkbutton">Переход на REST</a>
    </div>
    <div title="Пример JSON" iconCls="icon-reload" closable="false" style="padding:10px;">
    `
        <a href="/json" class="easyui-linkbutton">Переход на JSON</a>
    </div>
</div>


</body>
</html>