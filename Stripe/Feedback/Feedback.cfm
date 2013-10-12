<!--- Param the form posts. --->
<cfparam name="form.submitted" type="boolean" default="false">
<cfparam name="form.name" type="string" default="John Doe">
<cfparam name="form.email" type="string" default="JohnDoe@gmail.com">
<cfparam name="form.amount" type="numeric" default="1">
<cfparam name="form.stripeToken" type="string" default="">
<!--- A flag for validation-only requests (for AJAX). --->
<cfparam name="form.validateOnly" type="boolean" default="false">
<!--- Create an errors collection. --->
<cfset errors = []>
<cfset amountClass = "">
<cfset amountLabel = "amount">
<cfset NameClass = "">
<cfset NameLabel = "Name">
<cfset EmailClass = "">
<cfset EmailLabel = "Email">

<!---
	Check to see if the form has been submitted. The credit card
	form will be posting back to itself. However, note that we are
	NOT POSTING any credit card information to OUR server (to keep
	in accordance with PCI compliance).
--->
<cfif form.submitted>
	<!--- Check for a name. --->
	<cfif NOT len(form.name)>
		<cfset NameClass = "err">
		<cfset NameLabel = "Please enter your name">
		<cfset arrayAppend( errors, "Please enter your name." )>
	</cfif>
	<!--- Check for an email. --->
	<cfif NOT isValid("email", form.email)>
		<cfset EmailClass = "err">
		<cfset EmailLabel = "Please enter a valid Email">
		<cfset arrayAppend( errors, "Please enter a valid Email." )>
	</cfif>
	<!--- Check for transaction token. --->
	<cfif NOT len(form.stripeToken)>
		<cfset arrayAppend(errors, "Something went wrong with your credit card information. Please double-check it.")>
	</cfif>
	<!---
		Check to see if we are using asynchronous validation of the
		form. If so, let's just return an "API" response rather than
		fully processing the form data.
	--->
	<cfif form.validateOnly>
		<!--- Check to see if there are any errors. --->
		<cfset response = {}>
		<cfif arrayLen(errors)>
			<cfset response["success"] = false>
			<cfset response["errors"] = errors>
		<cfelse>
			<cfset response["success"] = true>
		</cfif>
		<!--- Serialize the response. --->
		<cfset responseJSON = serializeJSON(response)>
		<!--- Return the API response. --->
		<cfcontent type="text/x-application-json" variable="#toBinary(toBase64(responseJSON))#" />
		<!--- NOTE: API processing has been halted. --->
	</cfif>
	<!---
	If we made it this far, we are doing server-side processing.
	Check to see if there were any errors.
	--->
	<cfif NOT arrayLen(errors)>
		<!---
		Try to process the credit card transaction. Since a number of things can go wrong at this point, let's wrap this in a try/catch block.
		--->
		<cftry>
			<!---
			Charge the customer using the Stripe API. For this request, the username is our SECRET key. The password will be left blank.
			--->
			<cfhttp 
				result="myHttpResult" 
				method="post"
				url="https://api.stripe.com/v1/charges"
				username="#Application.SecretKey#"
				password="">
				<!--- Our amount (in cents). --->
				<cfhttpparam type="formfield" name="amount" value="#(form.amount * 100)#">
				<!--- Our currency (only USD if supported. --->
				<cfhttpparam type="formfield" name="currency" value="usd">
				<cfhttpparam type="formfield" name="card" value="#form.stripeToken#"> <!--- This was populated by myCallback --->
				<!---
					A description of the transaction to show up in
					OUR records for tracking purposes. It is
					considered a good practice to add the Email
					address here in order to follow up if necessary.
				--->
				<cfhttpparam type="formfield" name="description" value="Testing the Stripe.com API. (#form.email#).">
			</cfhttp>
			<!--- Deserialize the response. --->
			<cfset result = deserializeJSON(myHttpResult.fileContent)>
			<!---
			Check to see if an ERROR key exists. If so, then
			there was a problem with the transaction.
			--->
			<cfif structKeyExists(result, "error")>
				<cfif result.error.message EQ "Amount must be at least 50c" 
					OR result.error.message EQ "Invalid amount. Amount must be a positive integer in cents.">
					<cfset amountClass = "err">
					<cfset amountLabel = result.error.message>
				<cfelse>
					<!--- Add the message to the errors. --->
					<cfset arrayAppend(errors,result.error.message)>
				</cfif>
				<!--- Throw an errors to break the processing. --->
				<cfthrow type="InvalidRequestError">
			</cfif>
			<cflocation url="success.cfm" addtoken="false">
			<cfcatch type="InvalidRequestError">
			</cfcatch>
			<cfcatch>
				<cfset arrayAppend(errors,"There was an unexpected error during the processing of your purchase. The error has been logged and our team is looking into it.")>
			</cfcatch>
		</cftry>
	</cfif>
</cfif>

<!--- Reset the content buffer. --->
<cfcontent type="text/html; charset=utf-8">
<cfoutput>
<!DOCTYPE html>
<html>
<head>
<title>Accepting Online Payments With Stripe</title>
<link rel="stylesheet" type="text/css" href="Feedback.css">
</head>
<body>
<h1> Accepting Online Payments With Stripe </h1>
<!--- Check to see if we have any errors. --->
<div id="msg">
	<span id="msgErr">
		<cfif form.submitted AND arrayLen(errors)>
			<cfloop index="error" array="#errors#">
				#error#
			</cfloop>
		</cfif>
	</span>
</div>
<!--- --------------------------------------------- --->
<!--- --------------------------------------------- --->
<form>
	<label for="name"><span class="#NameClass#">#NameLabel#:</label>
	<input type="text" id="name" name="name" value="#htmlEditFormat(form.name)#" size="20">
	<label for="Email"><span class="#EmailClass#">#EmailLabel#:</label>
	<input type="text" id="Email" name="Email" value="#htmlEditFormat(form.email)#" size="20">
	<label for="amount"><span class="#amountClass#">#amountLabel#:</span></label>
	<select id="amount" name="amount">
		<option value="0">0</option>
		<option value="1" selected>$1</option>
		<option value="2">$2</option>
		<option value="3">$3</option>
		<option value="4">$4</option>
		<option value="-5">-$5</option>
	</select>
	<!---
	The user is going to enter their credit card information below. Notice that NONE of the credit-card fields have Name values. 
	This will prevent them from being submitted to OUR server which is what we need to avoid in order to comply with PCI standards.
	--->
	<p id="ccInfo">
		<label for="number"><span id="numberLabel">Credit Card:</span></label>
		<input id="number" type="text" value="4242424242424242" size="20" class="number">
		<label for="exp_month"><span id="expLabel">Expiration:</span></label>
		<input id="exp_month" type="text" size="5" class="exp_month" value="12">
		<input id="exp_year" type="text" size="5" class="exp_year" value="2015"> <em>(MM/YYYY)</em>
		<label for="cvc"><span id="cvcLabel">Security Code:</span></label>
		<input id="cvc" type="text" size="5" class="cvc" value="1234">
	</p>
	<p>
		<input id="Save" type="submit" value="Checkout">
	</p>


	<!--- Flag the form submission. --->
	<input type="hidden" name="submitted" value="true">
	<!---
	This is the Stripe token. It holds a one-use-only value that can be used to charge the given credit card a given amount.
	Once we pass the credit card info to the Stripe site (note: PCI comppliance), we will get a token in return.
	--->
	<input type="hidden" name="stripeToken" value="">
</form>
<div id="PublishableKey">#Application.PublishableKey#</div>
<div id="SCRIPT_NAME">#cgi.SCRIPT_NAME#</div>
<a href="http://www.bennadel.com/blog/2286-Accepting-PCI-Compliant-Payments-Without-A-Merchant-Account-Using-Stripe-And-ColdFusion.htm">Blog post</a>
<script src="/Library/js/log.js"></script>
<cfinclude template="/Library/Google/jQuery.min.cfm">
<script src="/Library/js/stringToBoolean.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v1/"></script>
<script src="Feedback.js"></script>
</body>
</html>
</cfoutput>