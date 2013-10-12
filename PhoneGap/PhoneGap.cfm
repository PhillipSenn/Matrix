<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
You must have the <a href="https://chrome.google.com/webstore/detail/ripple-emulator-beta/geelfhphabnejjhdalkjhgipohgpdnoc?hl=en">ripple</a> loaded in Chrome to emulate a phone here.
<ul>
	<li>document
		<ul>
			<li>addEventListener
				<ul>
					<li><a href="document/addEventListener/barcodescanner/index.html">barcodescanner</a></li>
					<li><a href="document/addEventListener/deviceready/Index.html">deviceready</a></li>
					<li><a href="document/addEventListener/Pause.cfm">pause</a></li>
					<li><a href="document/addEventListener/Resume.cfm">Resume</a></li>
					<li><a href="document/addEventListener/online.cfm">online</a></li>
					<li><a href="document/addEventListener/offline.cfm">offline</a></li>
					<li><a href="document/addEventListener/backbutton.cfm">backbutton</a></li>
					<li><a href="document/addEventListener/menubutton.cfm">menubutton</a></li>
					<li><a href="document/addEventListener/searchbutton.cfm">searchbutton</a></li>
				</ul>
			</li>
		</ul>
	</li>
	<li>window
		<ul>
			<li>device
				<ul>
					<li><a href="window/device/name.cfm">name</a></li>
					<li><a href="window/device/phonegap.cfm">phonegap</a> (UNDEFINED?)</li>
					<li><a href="window/device/platform.cfm">platform</a> (Generic?)</li>
					<li><a href="window/device/uuid.cfm">uuid</a> (42?)</li>
					<li><a href="window/device/version.cfm">version</a> (Generic?)</li>
				</ul>
				</li>
			</ul>
	</li>
	<li>navigator
		<ul>
			<li>accelerometer
				<ul>
					<li><a href="navigator/accelerometer/watchAcceleration.cfm">watchAcceleration()</a></li>
				</ul>
			</li>
			</ul>
	</li>
	<ul>
			<li>camera
			<ul>
				<li><a href="navigator/camera/getPicture.cfm">getPicture()</a></li>
				</ul>
			</li>
			<li>compass
				<ul>
					<li><a href="navigator/compass/watchHeading.cfm">watchHeading()</a></li>
				</ul>
			</li>
			<li>device
				<ul>
					<li><a href="navigator/device/capture.cfm">capture</a></li>
				</ul>
			</li>
			<li>geolocation
				<ul>
					<li><a href="navigator/geolocation/watchPosition.cfm">watchPosition()</a></li>
				</ul>
			</li>
			<li>network
				<ul>
					<li>connection
						<ul>
							<li><a href="navigator/network/connection/type.cfm">type</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>notification
				<ul>
					<li><a href="navigator/notification/alert.cfm">alert</a></li>
				</ul>
			</li>
		</ul>
</ul>
<table>
	<thead>
		<tr>
			<th>Type</th>
			<th>External link</th>
			<th>Example</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>PhoneGap</td>
			<td><a href="http://phonegap.com/start">Getting Started</a></td>
			<td><a href="GettingStarted/GettingStarted.cfm">GettingStarted</a></td>
		</tr>
		<tr>
			<td>Plugin</td>
			<td><a href="https://github.com/phonegap/phonegap-plugins/tree/master/iPhone/BarcodeScanner">Barcode Scanner</a></td>
			<td><a href="Plugins/Scan/Scan.cfm">Scan</a></td>
		</tr>
		<tr>
			<td>Adobe</td>
			<td><a href="http://tv.adobe.com/watch/adc-presents-phonegap/phonegap-device-api/">Videos</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>PhoneGap</td>
			<td><a href="http://docs.phonegap.com/en/1.7.0/index.html">API Reference</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Build</td>
			<td><a href="https://build.phonegap.com/docs/ios-builds">Building for iOS</a></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Android</td>
			<td>developer.android.com/sdk</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>mustache.github.com</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
<p>
	<cfinclude template="/Inc/foot.cfm">
	<cfinclude template="/Inc/End.cfm">
</p>
</cfoutput>
