alert "Logged in!"

$('#modal_window').foundation 'reveal', 'close'


$('#header').empty().append('<%= j render "layouts/header" %>')