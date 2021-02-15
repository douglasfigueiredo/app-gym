class SiteController < ApplicationController
  layout 'site'
  
  def index;end

  def cadastro
    # debugger
    @cadastro_user = User.new
    if verify_recaptcha
      if params.blank? ==false
        @cadastro_user = User.new(user_params)
        @cadastro_user.save
      else
        redirect_to '/'
      end

    else
      flash[:success] = "Erro ao verificar o captcha"
    end
  end

  def user_params
    params.permit(:nome, :email, :sexo)
  end
end
