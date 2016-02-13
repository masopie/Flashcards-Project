get '/login' do
  erb :'login'
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end


get '/register/?' do
  erb :'register'
end

post '/login/?' do
  user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  if user
    session[:user_id] = user.id
    redirect "/user/#{user.id}"
  else
    @error_login = 'Invalid Username or Password'
    erb :'login'
  end
end

post '/register/?' do
  user = User.new(username: params[:username], email: params[:email], password: params[:password])
  if user.save
    redirect '/login'
  else
    @errors = user.errors.full_messages
    erb :'register'
  end
end
