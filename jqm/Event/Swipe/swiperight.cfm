<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="home"> 
    <div data-role="content">
        <p>
            <ul data-role="listview" data-inset="true" data-theme="c">
                <li id="listitem">Swipe Right to view Page 1</li>
            </ul>
        </p>
    </div>
</section>

<section data-role="page" id="page1"> 
    <div data-role="content">

        <ul data-role="listview" data-inset="true" data-theme="c">
            <li data-role="list-divider">Navigation</li> 
            <li><a href="#home">Back to the Home Page</a></li>
        </ul>

        <p>
            Yeah!<br />You Swiped Right to view Page 1
        </p>
    </div>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="swiperight.js"></script>
<cfinclude template="/Inc/End.cfm">

