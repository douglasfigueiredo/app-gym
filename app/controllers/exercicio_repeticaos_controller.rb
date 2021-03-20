class ExercicioRepeticaosController < ApplicationController
  before_action :set_exercicio_repeticao, only: %i[ show edit update destroy ]

  # GET /exercicio_repeticaos or /exercicio_repeticaos.json
  def index
    @exercicio_repeticaos = ExercicioRepeticao.all
  end

  # GET /exercicio_repeticaos/1 or /exercicio_repeticaos/1.json
  def show
  end

  # GET /exercicio_repeticaos/new
  def new
    @exercicio_repeticao = ExercicioRepeticao.new
  end

  # GET /exercicio_repeticaos/1/edit
  def edit
  end

  # POST /exercicio_repeticaos or /exercicio_repeticaos.json
  def create
    @exercicio_repeticao = ExercicioRepeticao.new(exercicio_repeticao_params)

    respond_to do |format|
      if @exercicio_repeticao.save
        format.html { redirect_to '/exercicio_repeticaos', notice: "Exercicio repeticao was successfully created." }
        format.json { render :show, status: :created, location: @exercicio_repeticao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercicio_repeticao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercicio_repeticaos/1 or /exercicio_repeticaos/1.json
  def update
    respond_to do |format|
      if @exercicio_repeticao.update(exercicio_repeticao_params)
        format.html { redirect_to '/exercicio_repeticaos', notice: "Exercicio repeticao was successfully updated." }
        format.json { render :show, status: :ok, location: @exercicio_repeticao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercicio_repeticao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercicio_repeticaos/1 or /exercicio_repeticaos/1.json
  def destroy
    @exercicio_repeticao.destroy
    respond_to do |format|
      format.html { redirect_to exercicio_repeticaos_url, notice: "Exercicio repeticao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercicio_repeticao
      @exercicio_repeticao = ExercicioRepeticao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercicio_repeticao_params
      params.require(:exercicio_repeticao).permit(:nome, :min, :max, :genero)
    end
end
