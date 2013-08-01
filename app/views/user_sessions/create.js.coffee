<% if @user.nil? %>
  $('#modal_window').empty().html('<%= j render "static_pages/loginerror" %>')
<% else %>
  alert "Logged in!"
  $('#modal_window').foundation 'reveal', 'close'

  $('#header').empty().append('<%= j render "layouts/header" %>')
<% end %>