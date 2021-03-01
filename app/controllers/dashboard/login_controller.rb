class Dashboard::LoginController < ApplicationController
  layout "dashboard"
  
    def index
      if cookies[:user].present?
        redirect_to "/"
      end
    end
  
    def signin
      users = User.where(email: params[:email], password:  params[:password])
      if users.count > 0
        user = users.first
  
        time = params[:lembrar] == "1" ? 1.year.from_now : 30.minutes.from_now
  
        value = {
          id: user.id,
          email: user.email,
          password: user.password
        }
  
        cookies[:user] = { value: value.to_json, expires: time, jttponly: true }
  
        redirect_to  "/"
      else
        flash[:error] = "Email ou senha inválidos"
        redirect_to "/login"
      end
    end
  
  end
  