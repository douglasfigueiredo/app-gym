class SiteController < ApplicationController
  before_action :set_user
  layout 'site'
  
  def index;end

  def cadastro
    
    # if user_params
    
    # end
      
    # end
    # debugger
    @user = User.new(user_params)
    if verify_recaptcha(model: @user) && @user.save
      flash[:success]= "Obrigado por se cadastrar na maisgym.com!"
      redirect_to '/'  
    else
      flash[:error] = @user.errors.full_messages[0].to_s
      redirect_to '/#cadastro'
    end


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.all
    end
  
    def user_params
      params.permit(:nome, :email, :sexo)
    end
end
