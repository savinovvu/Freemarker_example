<html>
<head>
    <meta charset="UTF-8">
    <title>ExpamplePage</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">


    <script type="text/javascript" src="webjars/jquery/3.1.1-1/jquery.min.js" defer></script>
    <script type="text/javascript" src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.12/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js" defer></script>
</head>
<body >


<div style="margin:30px">
<#import "lib/example.ftl" as e>
<@e.inputForm />
</div>

<div style="margin:30px"></div>

<table class="table table-bordered table-stripped table-condensed">
    <thead>
    <tr class="success">
        <td>id</td>
        <td>login</td>
        <td>password</td>
        <td>Дата рождения</td>

    <tr>
    </thead>
<#list persons as person>

    <@tableLine person=person/>


    <#macro tableLine person>
        <tr>
            <td>${person.id}</td>
            <td>${person.login}</td>
            <td>${person.password}</td>
            <td>${person.birthDate}</td>
        </tr>
    </#macro>
</#list>


</table>

<p>Всего записей: ${persons?size}</p>



</body>
</html>
