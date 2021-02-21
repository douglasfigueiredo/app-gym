class Admin::DashboardController < ApplicationController
  def index
    @trainings = Training.all
  end
end
