<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<menu type="toolbar">
  <command type="radio" radiogroup="alignment" checked="checked" label="Left" icon="icons/alL.png" onclick="setAlign('left')">
  <command type="radio" radiogroup="alignment" label="Center" icon="icons/alC.png" onclick="setAlign('center')">
  <command type="radio" radiogroup="alignment" label="Right" icon="icons/alR.png" onclick="setAlign('right')">
  <hr>
  <command type="command" disabled="disabled" label="Publish" icon="icons/pub.png" onclick="publish()">
</menu>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
