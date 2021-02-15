class ItemTrainingsController < ApplicationController
  before_action :set_item_training, only: %i[ show edit update destroy ]
  before_action :set_training

  # GET /item_trainings or /item_trainings.json
  def index
    # @item_trainings = ItemTraining.all
    @item_trainings = ItemTraining.where(training_id: @training.id)
  end

  # GET /item_trainings/1 or /item_trainings/1.json
  def show
  end

  # GET /item_trainings/new
  def new
    @item_training = ItemTraining.new
  end

  # GET /item_trainings/1/edit
  def edit
  end

  # POST /item_trainings or /item_trainings.json
  def create
    @item_training = ItemTraining.new(item_training_params)
    @item_training.training = @training

    respond_to do |format|
      if @item_training.save
        format.html { redirect_to training_item_training_path(@training, @item_training), notice: "Item training was successfully created." }
        format.json { render :show, status: :created, location: @item_training }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_trainings/1 or /item_trainings/1.json
  def update
    respond_to do |format|
      if @item_training.update(item_training_params)
        format.html { redirect_to @item_training, notice: "Item training was successfully updated." }
        format.json { render :show, status: :ok, location: @item_training }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_trainings/1 or /item_trainings/1.json
  def destroy
    @item_training.destroy
    respond_to do |format|
      format.html { redirect_to training_item_trainings_url, notice: "Item training was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_training
      @training = Training.find(params[:training_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_item_training
      @item_training = ItemTraining.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_training_params
      params.require(:item_training).permit(:training_id, :exercise_id)
    end
end
