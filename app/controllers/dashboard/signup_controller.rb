class Dashboard::SignupController < ApplicationController
  layout "dashboard"
    # skip_before_action :verify_authenticity_token, only: :logar
  
  def index
    if cookies[:user].present?
      redirect_to "/"
    end
    @user = User.new
  end

  def confirm

  end

  # POST /user or /user.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        cookies[:user] = @user.id.to_s
        format.html { redirect_to "login", notice: "Usuário criado com sucesso." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.permit(:email, :password)
    end
  
  end
  