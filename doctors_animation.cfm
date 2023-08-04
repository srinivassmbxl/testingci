<cfif StructKeyExists(url,"c_id") and url.c_id neq ''>
    <cfset enc_cid =trim(url.c_id)>
    <cfif FindNoCase(",",enc_cid) GT 0>
        <cfset enc_cid = ListFirst(enc_cid)>
        <cfset url.c_id = enc_cid>
    </cfif>
    <cfset decrypt_customer_id = decrypt(trim(enc_cid), request.theKey, 'DES', 'HEX')>
    <cfset encodecustomerid = decrypt_customer_id>
    <cfset decodecustomerid = Left(encodecustomerid, len(encodecustomerid)-8)>
<cfelse>
    <cflocation url = "#request.website#/advisor/" addtoken="false">
</cfif>
<cfquery name="qryprenatalcid"  datasource="#request.dsn#">
    SELECT customer_ID,redirection_status FROM  TBL_DATA_CORRECTION_PRENATAL
        WHERE customer_id = #decodecustomerid#
</cfquery>
<cfif qryprenatalcid.recordcount GT 0>
    <cfif len(trim(qryprenatalcid.redirection_status)) NEQ 1>
        <cfquery name="upd"  datasource="#request.dsn#">
            UPDATE TBL_DATA_CORRECTION_PRENATAL
                SET redirection_status =1
            WHERE customer_id = #decodecustomerid#
         </cfquery>
    </cfif>
</cfif>

<!--- Loading page content is included in the below file --->
<cfinclude template="talking_heads_new.cfm">

<!--- Tik tok pixcel finished assessment below file requested by Sasha 04/01/2023 --->
<cfinclude template="tiktok_fa.cfm">

<!---Heap Analytices tracking here 14/12/2021 requested by Joanne/Stefan--->
<cfif request.web_server_name eq 'production'>
    <cfset heap_id = "4095439089"/>
<cfelse>
    <cfset heap_id = "4076384936"/>
</cfif>
<script type="text/javascript">
window.heap=window.heap||[],heap.load=function(e,t){window.heap.appid=e,window.heap.config=t=t||{};var r=document.createElement("script");r.type="text/javascript",r.async=!0,r.src="https://cdn.heapanalytics.com/js/heap-"+e+".js";var a=document.getElementsByTagName("script")[0];a.parentNode.insertBefore(r,a);for(var n=function(e){return function(){heap.push([e].concat(Array.prototype.slice.call(arguments,0)))}},p=["addEventProperties","addUserProperties","clearEventProperties","identify","resetIdentity","removeEventProperty","setEventProperties","track","unsetEventProperty"],o=0;o<p.length;o++)heap[p[o]]=n(p[o])};
heap.load("<cfoutput>#heap_id#</cfoutput>");
</script>