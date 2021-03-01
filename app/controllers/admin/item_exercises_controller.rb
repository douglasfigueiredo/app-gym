class Admin::ItemExercisesController < ApplicationController
  before_action :set_item_exercise, only: %i[ show edit update destroy ]
  before_action :set_exercise

  # GET /item_exercises or /item_exercises.json
  def index
    # @item_exercises = ItemExercise.all
    @item_exercises = ItemExercise.where(exercise_id: @exercise.id)
  end

  # GET /item_exercises/1 or /item_exercises/1.json
  def show
  end

  # GET /item_exercises/new
  def new
    @item_exercise = ItemExercise.new
  end

  # GET /item_exercises/1/edit
  def edit
  end

  # POST /item_exercises or /item_exercises.json
  def create
    @item_exercise = ItemExercise.new(item_exercise_params)
    @item_exercise.exercise = @exercise

    respond_to do |format|
      if @item_exercise.save
        format.html { redirect_to exercise_item_exercises_path(@exercise), notice: "Item pedido was successfully created." }
        # format.html { redirect_to @item_exercise, notice: "Item exercise was successfully created." }
        format.json { render :show, status: :created, location: @item_exercise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_exercises/1 or /item_exercises/1.json
  def update
    respond_to do |format|
      if @item_exercise.update(item_exercise_params)
        format.html { redirect_to exercise_item_exercise_path(@exercise, @item_exercise), notice: "Item exercise was successfully updated." }
        format.json { render :show, status: :ok, location: @item_exercise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_exercises/1 or /item_exercises/1.json
  def destroy
    @item_exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercise_item_exercises_url, notice: "Item exercise was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_exercise
      @exercise = Exercise.find(params[:exercise_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_item_exercise
      @item_exercise = ItemExercise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_exercise_params
      params.require(:item_exercise).permit(:name, :guide, :exercise_id)
    end
end
