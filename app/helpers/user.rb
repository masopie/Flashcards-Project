helpers do
  # This will return the current user, if they exist
  # Replace with code that works with your application

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

end
