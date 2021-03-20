class ExercicioSeriesController < ApplicationController
  before_action :set_exercicio_series, only: %i[ show edit update destroy ]

  # GET /exercicio_series or /exercicio_series.json
  def index
    @exercicio_series = ExercicioSeries.all
  end

  # GET /exercicio_series/1 or /exercicio_series/1.json
  def show
  end

  # GET /exercicio_series/new
  def new
    @exercicio_series = ExercicioSeries.new
  end

  # GET /exercicio_series/1/edit
  def edit
  end

  # POST /exercicio_series or /exercicio_series.json
  def create
    @exercicio_series = ExercicioSeries.new(exercicio_series_params)

    respond_to do |format|
      if @exercicio_series.save
        format.html { redirect_to '/exercicio_series', notice: "Exercicio series was successfully created." }
        format.json { render :show, status: :created, location: @exercicio_series }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercicio_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercicio_series/1 or /exercicio_series/1.json
  def update
    respond_to do |format|
      if @exercicio_series.update(exercicio_series_params)
        format.html { redirect_to '/exercicio_series', notice: "Exercicio series was successfully updated." }
        format.json { render :show, status: :ok, location: @exercicio_series }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercicio_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercicio_series/1 or /exercicio_series/1.json
  def destroy
    @exercicio_series.destroy
    respond_to do |format|
      format.html { redirect_to exercicio_series_index_url, notice: "Exercicio series was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercicio_series
      @exercicio_series = ExercicioSeries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercicio_series_params
      params.require(:exercicio_series).permit(:nome, :quantidade)
    end
end
