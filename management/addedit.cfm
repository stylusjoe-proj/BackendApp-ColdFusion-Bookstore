<cfparam name="book" default="">
<cfparam name="qterm" default="">


<cfoutput>
    <cftry>
        <div id="leftgutter" class="col-3">
            <cfoutput>
                #sideNav()#
            </cfoutput>
        </div>
        <div id="main" class="col-9">
            <cfoutput>
                <!--- Open Space for the Image SlideShow --->
                #mainForm()#
            </cfoutput>
        </div>
        <cfcatch type="any">
            <cfoutput>
                #cfcatch.Message#
            </cfoutput>
        </cfcatch>
    </cftry>
</cfoutput>



<cffunction name="sideNav">
    <cfoutput> 
        <form action="#cgi.SCRIPT_NAME#?tool=addedit" method="post" class="form-inline">>
            <div class="form-group">
                 <input type="text" class="form-control" name="qterm" id="qterm" value="#qterm#">
                 <button type="submit" class="btn btn-xs btn-primary">Search</button>
            </div>        
        </form>
    </cfoutput>

    <cfif qterm neq ''>
        <cfquery name="allbooks" datasource="#application.dsource#">

        </cfquery>
    </cfif>

    <ul class="nav nav-stacked">
        <cfoutput>             
            <p>
                <a href="#cgi.script_name#?tool=addedit&book=new" class="nav-link">Add a Book</a>
            </p>
        </cfoutput>
            <h3> Book List </h3>
            </br>
                
            <cfif isdefined('allbooks')>
                <cfloop query="allbooks">
                    <li class="nav-item">
                        <a href="#cgi.script_name#?tool=addedit&book=#trim(isbn13)#" class="nav-link">#trim(title)#</a>
                    </li>
                    <cfelse> No Search Term </cfelse>
                </cfloop>
            </cfif>
    </ui>
</cffunction>




<cffunction name="processForms">
    <cfif isdefined('form.isbn13')>
        <cfif isdefined('form.uploadimage') and trim(form.uploadimage) neq ''>
            <cffile action="upload" filefield="uploadimage" destination="#expandpath('/')#dwalc27501/mywebsite/images/" nameconflict="makeunique">
                <cfset form.image='#cffile.serverfile#'>
           
        <cfquery name="adddata" datasource="#application.dsource#">
            if not exists (select * from books where isbn13='#form.isbn13#')
                insert into books (isbn,title)
                values ('#form.isbn13#','#form.title#');
                update books
        </cfquery>

        <cfquery datasource=#application.dsource#>
            delete from genrestobooks where bookid='#form.isbn13#'
        </cfquery>

        <cfoutput>
            <cfloop list="#form.genre#" index="i">
                <cfquery name="putingenres" datasource="#application.dsource#">
                    insert into genrestobooks (bookid, genreid) values ('#form.isbn13#','#i#')
                </cfquery>
            </cfloop>           
        </cfoutput>

    </cfif>
</cffunction>
