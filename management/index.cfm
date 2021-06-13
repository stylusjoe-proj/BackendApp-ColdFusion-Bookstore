<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Final Project</title>
    <!---<link href="../../includes/bootstrap/css/bootstrap.css" rel="stylesheet" />--->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="../includes/ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<cfif not session.user.isadmin>
    <cflocation url="../index.cfm" />
</cfif>
<body>
    <div class="container">
        <div>
            <cfinclude template='managementnavbar.cfm'>
        </div>

        <div>
            <cfinclude template='../header.cfm'>
        </div>

        <cfparam name="tool" default="addedit">
        <div class="row">
            <cfinclude template='#tool#.cfm'>
        </div>
    </div>
</body>
</html>