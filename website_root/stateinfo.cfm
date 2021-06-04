<cfif isdefined('url.p') and url.p eq 'logoff'>
    <cfset StructClear(session)>
    <cfset session.isloggedin=false>
    <cfset makeCleanUser()>
    <cfset p="carousel">
</cfif>

<cfif not isdefined('session.user')>
    <cfset session.isLoggedIn=false>
    <cfset session.user = {
        firstname:'',
        lastname:'',
        acctNumber:'',
        email:'',
        isadmin:0
    }>
</cfif>

<cfif isdefined('form.loginemail')>
    <cfquery name="access" datasource="#application.dsource#">
        select *
        from people
        inner join passwords
        on people.id = passwords.personid
        where people.email='#form.loginemail#'
        and password = '#hash(form.loginpass,"SHA-256")#'
    </cfquery>

    <cfif access.recordcount gt 0>
        <cfset session.user.firstname = access.firstname[1]>
        <cfset session.user.lastname = access.lastname[1]>
        <cfset session.user.email = access.email[1]>
        <cfset session.user.acctnumber = access.id[1]>
        <cfset session.isloggedin = true>
        <cfset session.user.isadmin = access.isadmin[1]>
        <cfset p="carousel">
    <cfelse>
        <cfset loginmessage = "Sorry, that login doesn't match" />
    </cfif>
</cfif>



<cffunction name="makeCleanUser">

    <cfset session.isloggedin = false>
    <cfset session.user.isadmin = false>
    <cfset session.user={
        firstName:'',
        lastName:'',
        acctNumber:'',
        email:''

    }>


</cffunction>