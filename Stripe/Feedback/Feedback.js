$('form').attr('method','post');

// Our Stripe.js file gave us an API to work with. Let's identify our site.
Stripe.setPublishableKey($('#PublishableKey').text());


// Intercept the form submission
$('form').submit(function( myEvent ) {
	myEvent.preventDefault(); // Contact the Stripe API before truly submitting the form.
	$('.err').removeClass('err');
	$('#ccInfo').slideUp('slow');
	$('#Save').val('Thank You!').attr('disabled',true);
	// Get a token from Stripe.
	Stripe.createToken(
		{
			number: $('#number').val(),
			exp_month: $('#exp_month').val(),
			exp_year: $('#exp_year').val(),
			cvc: $('#cvc').val()
		},
	
		// The amount of the purchase. This amount is in the form of cents.
		($('select[name=amount]').val() * 100),
	
		// The callback for our transaction token.
		myCallback
	);
});


// Come back here when Stripe is finished:
function myCallback( status, response ) {
	// Check to see if the response contains an error (ie. if the "error" key exists in the response).
	if (response.hasOwnProperty( "error" )){
		$('#ccInfo').slideDown('slow');
		$('#Save').val('Try Again').removeAttr('disabled');
		if (response.error.message === "Your card's expiration year is invalid") {
			$('#expLabel').addClass('err').text(response.error.message);
			$('#exp_year').addClass('err');
		} else if (response.error.message === "Your card's expiration month is invalid") {
			$('#expLabel').addClass('err').text(response.error.message);
			$('#exp_month').addClass('err');
		} else if (response.error.message === "Your card number is invalid") {
			$('#numberLabel').addClass('err').text(response.error.message);
			$('#number').addClass('err');
		} else if (response.error.message === "Your card's security code is invalid") {
			$('#cvcLabel').addClass('err').text(response.error.message);
			$('#cvc').addClass('err');
		} else {
			$('#msgErr').text(response.error.message);
		}
		return;
	}
	
	// Now, let's validate our non-stripe data.
	var validation = $.ajax({
		type: "post",
		url: $('#SCRIPT_NAME').text(),
		data: {
			submitted: true,
			validateOnly: true,
			name: $('input[name=name]').val(),
			email: $('input[name=email]').val(),
			amount: $('select[name=amount]').val(),
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
			$('input[name=stripeToken]').val(response.id);
			$('form').unbind('submit').submit();
		} else {
			$('#ccInfo').slideDown('slow');
			$('#Save').val('Please try again').removeAttr('disabled');
			$('#msgErr').text(result.errors.join( "\n- " ));
		}
	});
}


