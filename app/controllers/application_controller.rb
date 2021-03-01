class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def valida_logado_admin
    if cookies[:user].present?
      hash_admin = JSON.parse(cookies[:user])
      if hash_admin["id"].present?
        users = User.where(id: hash_admin["id"])
        if users.count > 0
          @user = users.first
          return
        end
      end
    end
    redirect_to "/login"
  end

end
