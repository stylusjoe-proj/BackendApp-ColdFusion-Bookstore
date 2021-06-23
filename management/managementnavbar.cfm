<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="../index.cfm">
            <img src="../images/logo.png"/>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ol class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="../index.cfm">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="">Store Information</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#cgi.script_name#?tool=content">Content</a>
                </li>

                <ul class="nav navbar-nav navbar-right">
                    <cfoutput>
                        <cfif session.isloggedin>
                            <div>
                                <li class="nav-item"><a class="nav-link active" aria-current="page">Welcome #session.user.firstname#  </a></li>
                            </div>

                            <div>
                                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#cgi.script_name#?p=logoff"> Logout </a></li>
                            </div>

                        </cfif>
                    </cfoutput>
                </ul>

            </ol>
        </div>
        
    </div>
</nav>