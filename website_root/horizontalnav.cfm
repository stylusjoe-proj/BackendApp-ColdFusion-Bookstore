<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.cfm">
        <img src="../includes/images/logo.png"/>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.cfm">Home</a>
                </li>
             
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <cfoutput>
                <form class="d-flex" action="#cgi.script_name#?p=details" method="post" role="search">
                    <input class="form-control me-2" name="searchme" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </cfoutput>
            <ul class="nav navbar-right">
                <cfoutput>
                        <cfif session.isloggedin>
                            <li class="nav-item"><a>Welcome #session.user.firstname#</a></li>
                                <cfif session.user.isadmin>
                                        <li class="nav-item"><a href="management/"> Management Page </a></li>
                                </cfif>
                            <li class="nav-item"><a href="#cgi.script_name#?p=logoff"> Logout </a></li>
                        <cfelse>
                            <li><a href="#cgi.script_name#?p=login"> Login </a></li>
                        </cfif>
                </cfoutput>
            </ul>
        </div>
    </div>
</nav>