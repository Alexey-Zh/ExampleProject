<html>
<head>
    <meta charset="UTF-8">
    <title>Пример REST</title>
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/color.css">
    <link rel="stylesheet" type="text/css" href="/resources/easyui/demo/demo.css">
    <script type="text/javascript" src="/resources/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="resources/js/mapping.js"></script>
</head>

<script src="/resources/easyui/jquery.min.js"></script>
<script type="text/javascript">
    var prefix = '/restservice';

    var RestGet = function() {
        $.ajax({
            type: 'GET',
            url:  prefix + '/' + Date.now(),
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                        + ', сообщение: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }

    var RestPut = function() {
        var JSONObject= {
            'time': Date.now(),
            'message': 'Это пример вызова PUT метода'
        };

        $.ajax({
            type: 'PUT',
            url:  prefix,
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(JSONObject),
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                        + ', сообщенеи: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }

    var RestPost = function() {
        $.ajax({
            type: 'POST',
            url:  prefix,
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                        + ', сообщение: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }

    var RestDelete = function() {
        $.ajax({
            type: 'DELETE',
            url:  prefix + '/' + Date.now(),
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                        + ', сообщение: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }
</script>

<script type="text/javascript" src="resources/js/mapping.js"></script>


<body>

<h3>Это простой пример использования REST c помощью Ajax</h3>

<p>
<div style="padding:5px;background:#fafafa;width:500px;border:1px solid #ccc">
    <a href="#" onclick=RestGet() class="easyui-linkbutton">Метод GET</a>
    <a href="#" onclick=RestPost() class="easyui-linkbutton">Метод POST</a>
    <a href="#" onclick=RestDelete() class="easyui-linkbutton">Метод DELETE</a>
    <a href="#" onclick=RestPut() class="easyui-linkbutton">Метод PUT</a>
</div>
</p>
<br>
<a href="/" class="easyui-linkbutton" iconCls="icon-cancel">Назад</a>

</body>
</html>