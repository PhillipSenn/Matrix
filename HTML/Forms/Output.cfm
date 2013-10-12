<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form onsubmit="return false">
  <input id="a" name="a" type="number" step="any"> +
  <input id="b" name="b" type="number" step="any"> =
  <output for="a b"  onforminput="value = a.valueAsNumber + b.valueAsNumber"></output>
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
