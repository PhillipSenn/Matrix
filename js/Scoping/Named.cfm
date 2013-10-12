<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Named</h1>
Here we see that myFunction is not returning a value, but is actually returning another function.
So, we are assigning a function 'f' to the variable X.
Then, when X() is called, it knows about 'i'.

<cfinclude template="/Inc/foot.cfm">
<script src="Named.js"></script>
<cfinclude template="/Inc/End.cfm">
