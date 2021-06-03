<!doctype html>
<html>
<head>
    <title>Read ALOT</title>
    <link href="../includes/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../includes/css/mycss.css" rel="stylesheet" />
    <script src="../includes/js/jQuery/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../includes/bootstrap/js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
    <cfparam name="p" default="carousel" />
    <cfinclude template="stateinfo.cfm">
        <div id="wrapper" class="container">

            <div id="topHeader" class="row">
                <cfinclude template="header.cfm">
            </div>

            <div id="horizontalnav" class="row">
                <cfinclude template="horizontalnav.cfm">
            </div>

                <div id="maincontent" class="row">

                    <div id="leftgutter" class="col-3">
                        <cfinclude template="genrenav.cfm" >
                    </div>

                    <div id="center" class="col-6">
                        <cfinclude template="#p#.cfm">
                    </div>
                </div>

            <div id="footer" class="row">
                <cfinclude template="footer.cfm">
            </div>

        </div>