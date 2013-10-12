// Get a reference to our main DOM elements.
var dom = {};
dom.form = $('form');
dom.stripeToken = $('input[name=stripeToken]');
dom.name = $('input[name=name]');
dom.email = $('input[name=email]');
dom.donation = $('select[name=donation]');
dom.creditCard = $('#creditCard');
dom.expirationMonth = $('#expirationMonth');
dom.expirationYear = $('#expirationYear');
dom.securityCode = $('#securityCode');


// Our Stripe.js file gave us an API to work with. Let's identify our site.
Stripe.setPublishableKey($('#PublishableKey').text());


// Intercept the form submission so that we can interact with the Stripe API to get our transaction token.
dom.form.submit(function( myEvent ) {
	myEvent.preventDefault(); // Contact the Stripe API before truly submitting the form.

	// Get a transaction token from the Stripe API.
	// This will store the credit card in the Stripe
	// database. We can then use the token to
	// actually execute the form submit.
	Stripe.createToken(
		{
			number: dom.creditCard.val(),
			exp_month: dom.expirationMonth.val(),
			exp_year: dom.expirationYear.val(),
			cvc: dom.securityCode.val()
		},
	
		// The amount of the purchase. This amount is in the form of cents.
		(dom.donation.val() * 100),
	
		// The callback for our transaction token.
		myCallback
	);
});


// I handle the response from the Stripe token request.
// Since this request is asynchronous, we will get a
// response using a callback mechanism.
function myCallback( status, response ) {
	// Check to see if the response contains an error (ie. if the "error" key exists in the response).
	if (response.hasOwnProperty( "error" )){
		alert("Something went wrong!\n\n" + response.error.message);
		return;
	}
	
	// form.stripToken =response.id
	dom.stripeToken.val(response.id);
	
	// Now, let's validate our non-stripe data.
	var validation = $.ajax({
		type: "post",
		url: $('#SCRIPT_NAME').text(),
		data: {
			submitted: true,
			validateOnly: true,
			name: dom.name.val(),
			email: dom.email.val(),
			donation: dom.donation.val(),
			stripeToken: response.id
		},
		dataType: "json"
	});
	
	// Check the validate asynchronous response.
	validation.done(function(result) {
		if (result.success){
			// Both the stripe API call and the local
			// server validation worked. Unbind any
			// form handlers and submit the form.
			dom.form.unbind('submit').submit();
		} else {
			alert("SOMETHING went wrong!\n\n- " + result.errors.join( "\n- " ));
		}
	});
}


