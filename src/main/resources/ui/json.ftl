
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="keywords" content="jquery,ui,easy,easyui,web">
    <meta name="description" content="easyui help you build your web page easily!">
    <title>jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/resources/easyui/themes/icon.css">
    <script type="text/javascript" src="/resources/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/easyui/jquery.easyui.min.js"></script>
    <script>
        function formatPrice(val,row){
            if (val < 20){
                return '<span style="color:red;">('+val+')</span>';
            } else {
                return val;
            }
        }
    </script>
</head>
<body>
<h1>DataGrid</h1>

<table id="tt" title="Formatting Columns" class="easyui-datagrid""
       url="http://gturnquist-quoters.cfapps.io/api/random"
       singleSelect="true" iconCls="icon-save">
    <thead>
    <tr>
        <th field="id" width="80">ID</th>
        <th field="type" width="80">Type</th>
        <th field="quote" width="700">Quote</th>
    </tr>
    <tr>
        <th field="id">${jsonTest.getId()}</th>
        <th field="type">&${jsonTest.getType()}</th>
        <th field="quote">&${jsonTest.getQuote()}</th>
    </tr>
    </thead>
</table>
<p><br>
    <br>
    <a href="/" class="easyui-linkbutton" iconCls="icon-cancel">Назад</a></p>
</body>
</html>