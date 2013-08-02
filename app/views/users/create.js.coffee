<% unless @user.errors.messages.empty? %>
  <% if @user.errors.messages[:password] %>
    <% if @user.errors.messages[:password][0] == "should match confirmation"  %>
      $('#modal_window').empty().append('<%= j render "static_pages/passworddontmatch" %>')
    <% elsif @user.errors.messages[:password][0] == "password must be at least 3 characters long"  %>
      $('#modal_window').empty().append('<%= j render "static_pages/passwordtooshort" %>')
    <% end %>
  <% else @user.errors.messages[:username] %>
    <% if @user.errors.messages[:username][0] == "username cannot be blank" %>
      $('#modal_window').empty().append('<%= j render "static_pages/signuperror" %>')
    <% elsif @user.errors.messages[:username][0] == "that username is already registered" %>
      $('#modal_window').empty().append('<%= j render "static_pages/usernametaken" %>')
    <% end %>
  <% end %>
<% else %>
  alert "Thank you for registering"

  $('#modal_window').foundation 'reveal', 'close'
<% end %>
