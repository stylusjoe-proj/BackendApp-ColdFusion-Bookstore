<cfparam name="AccountChangeMessage" default="">

<div class="row">
    <div class="col-lg-6"><cfset passwordForm()></div>
</div>

<script type="text/javascript">
    function validateNewAccount(){
        var password = document.getElementById('password').value;
        var confirmPassword = document.getElementById('confirmPassword').value;

        if(password === confirmPassword && password !== '' && confirmPassword !== ''){
            document.getElementById('submitform').click();
            document.getElementById('AccountPasswordMessage').innerHTML="<strong> Accepted. </strong>";
        }
        else{
            document.getElementById('AccountPasswordMessage').innerHTML="<strong> THERE IS NO ACCOUNT WHICH MATCHES THAT INFORMATION. </strong>";
        }
    }
</script>

<cffunction name = "processPassword">
</cffunction>

<cffunction name = "passwordForm">
    <cfoutput>
    </cfoutput>
</cffunction>

