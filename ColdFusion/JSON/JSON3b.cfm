<cfset HTTPRequestData = GetHTTPRequestData()>

<cfoutput>
<ul>
	<li>HTTPRequestData.Method: #HTTPRequestData.method#</li>
	<li>HTTPRequestData.Protocol: #HTTPRequestData.protocol#</li>
	<cfloop collection="#HTTPRequestData.headers#" item="FieldName">
		<cfset FieldValue = HTTPRequestData.headers[FieldName]>
		<li>HTTPRequestData.headers.#FieldName#: #FieldValue#</li>
	</cfloop>
	<cfset strContent = toString(HTTPRequestData.Content)>
	<cfif isJSON(strContent)>
		<cfset stcContent = deserializeJSON(strContent)>
		<cfif IsStruct(stcContent)>
			<li><strong>AND FINALLY:</strong></li>
			<cfloop collection="#stcContent#" item="FieldName">
				<cfset FieldValue = stcContent[FieldName]>
				<cfif IsArray(FieldValue)>
					<cfloop from="1" to="#ArrayLen(FieldValue)#" index="I">
						<li>HTTPRequestData.Content.#FieldName#[#I#]: #FieldValue[I]#</li>
					</cfloop>
				<cfelseif isSimpleValue(FieldValue)>
					<li>HTTPRequestData.Content.#FieldName#: #FieldValue#</li>
				</cfif>
			</cfloop>
		<cfelse>
			<li>stcContent is not a structure.</li>
		</cfif>
	<cfelse>
		<li>strContent is not in JSON format</li>
	</cfif>
</ul>
</cfoutput>
