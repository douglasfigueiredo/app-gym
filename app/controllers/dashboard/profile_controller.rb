class Dashboard::ProfileController < ApplicationController
  before_action :valida_logado_admin, :set_profile, :set_user_id

  layout "dashboard"
  
  def show
    
  end

  def edit
  end

  def new
    if @profile.present?
      redirect_to "/profile"
    else
      @profile = Profile.new
    end
  end

    # POST /user or /user.json
  def create
    # debugger
    @profile = Profile.new(profile_params)
    respond_to do |format|
      if @profile.save
        cookies[:profile] = @profile.id.to_s
        format.html { redirect_to "/profile", notice: "Perfil criado com sucesso." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

   # PATCH/PUT /veiculos/1 or /veiculos/1.json
   def update
    # debugger
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to "/profile", notice: "Perfil criado com sucesso." }
        format.json { render :show, status: :created, location: @profile }
      else
        # debugger
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    
    end
  end

  private
    def set_user_id
      if cookies[:user].present?
        user = JSON.parse(cookies[:user])
      end
    end
    def set_profile
        user = JSON.parse(cookies[:user])
        @profile = Profile.where(user_id: user["id"]).first
    end
    def set_user
      user = JSON.parse(cookies[:user])
      @user = User.find(user["id"])
    end
    
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :birthday, :genre, :user_id)
    end
end
  