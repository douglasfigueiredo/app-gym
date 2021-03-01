class Dashboard::HomeController < ApplicationController
  before_action :valida_logado_admin, :set_profile, :set_user, :set_trainings

  layout "dashboard"
  
    def index
      if cookies[:user].present?
        
        # user = JSON.parse(cookies[:user])
        # @profile = Profile.where(user_id: user["id"])
        if @profile.present?
          return
        else
          redirect_to "/profile/new"
        end
      end
    end

    def logout
      cookies[:user] = nil
      redirect_to "/"
    end

    private
      def set_trainings
        @trainings = Training.limit(3)
      end
      def set_profile
        user = JSON.parse(cookies[:user])
        @profile = Profile.where(user_id: user["id"]).first
      end
      def set_user
        user = JSON.parse(cookies[:user])
        @user = User.find(user["id"])
      end
  end
  