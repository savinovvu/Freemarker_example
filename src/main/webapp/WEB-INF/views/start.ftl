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
<body>



<form>
    <label  for="login">login</label>
    <input id="login" type="text">
    <label  for="login">password</label>
    <input id="password" type="text">
    <label>Birth Date</label>
    <input id="birthDate"type="text">

</form>

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

<#macro repeat count>
    <#list 1..count as x>
        <#nested x, x/2, x==count> <br>
    </#list>
</#macro>
<@repeat count=4 ; c, halfc, last>
${c}. ${halfc}<#if last> Last!</#if>
</@repeat>

<#import "lib/example.ftl" as e>

Some Web page...
<@e.copyright date="1999-2002"/>
${e.mail}



</body>
</html>
