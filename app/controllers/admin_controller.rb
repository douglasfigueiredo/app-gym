class AdminController < ApplicationController
  def index
    @trainings = Training.all
  end
end
