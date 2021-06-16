<cfparam name="contentid" default="">

<cfquery name="thisContent" datasource="#application.dsource#">
    select * from content where contentid='#contentid#'
</cfquery>

<cfif contentid neq '' and thisContent.recordcount gt 0>
    <cfoutput>
        <legend>#thisContent.title[1]#</legend>
        <div>#thisContent.description[1]#</div>
    </cfoutput>

    <cfelse>
        <cfoutput>
        Sorry, we couldnt find this content in the datasource "#application.dsource#"
        </cfoutput>