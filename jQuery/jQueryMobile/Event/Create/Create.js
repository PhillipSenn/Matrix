var str = '<button>my Button</button>';
$(':jqmData(role=content)').append(str).trigger('create');
$('header nav').remove();
$('header').append('<nav data-role="navbar"><ul><li><a href="#" data-theme="e">One</a></li><li><a href="#">Two</a></li></ul>');

