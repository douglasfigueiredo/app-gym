class Dashboard::MyTrainingsController < ApplicationController
  before_action :set_my_training, only: %i[ show edit update destroy ]
  before_action :set_trainings, :set_user

  layout 'dashboard'

  # GET /my_trainings or /my_trainings.json
  def index
    @my_trainings = MyTraining.all
  end

  # GET /my_trainings/1 or /my_trainings/1.json
  def show
  end

  # GET /my_trainings/new
  def new
    @my_training = MyTraining.new
  end

  # GET /my_trainings/1/edit
  def edit
  end

  # POST /my_trainings or /my_trainings.json
  def create
    debugger
    @my_training = MyTraining.new(my_training_params)

    respond_to do |format|
      if @my_training.save
        format.html { redirect_to '/', notice: "My training was successfully created." }
        format.json { render :show, status: :created, location: @my_training }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_trainings/1 or /my_trainings/1.json
  def update
    respond_to do |format|
      if @my_training.update(my_training_params)
        format.html { redirect_to @my_training, notice: "My training was successfully updated." }
        format.json { render :show, status: :ok, location: @my_training }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_trainings/1 or /my_trainings/1.json
  def destroy
    @my_training.destroy
    respond_to do |format|
      format.html { redirect_to my_trainings_url, notice: "My training was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = JSON.parse(cookies[:user])
      @user = User.find(user["id"])
    end
    def set_trainings
      @trainings = Training.limit(3)
    end
    def set_my_training
      @my_training = MyTraining.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_training_params
      params.require(:my_training).permit(:user_id, :status, :training_id, :exercises_id, :items_exercise_id)
    end
end
