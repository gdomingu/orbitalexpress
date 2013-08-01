<% if @user.errors %>
  $('#modal_window').empty().append('<%= j render "static_pages/signuperror" %>')
<% else %>
  alert "Thank you for registering"

  $('#modal_window').foundation 'reveal', 'close'
<% end %>
