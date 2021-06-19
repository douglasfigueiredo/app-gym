class TipoDeExerciciosController < ApplicationController
  before_action :set_tipo_de_exercicio, only: %i[ show edit update destroy ]

  # GET /tipo_de_exercicios or /tipo_de_exercicios.json
  def index
    @tipo_de_exercicios = TipoDeExercicio.all
  end

  # GET /tipo_de_exercicios/1 or /tipo_de_exercicios/1.json
  def show
  end

  # GET /tipo_de_exercicios/new
  def new
    @tipo_de_exercicio = TipoDeExercicio.new
  end

  # GET /tipo_de_exercicios/1/edit
  def edit
  end

  # POST /tipo_de_exercicios or /tipo_de_exercicios.json
  def create
    @tipo_de_exercicio = TipoDeExercicio.new(tipo_de_exercicio_params)

    respond_to do |format|
      if @tipo_de_exercicio.save
        format.html { redirect_to @tipo_de_exercicio, notice: "Tipo de exercicio was successfully created." }
        format.json { render :show, status: :created, location: @tipo_de_exercicio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_de_exercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_exercicios/1 or /tipo_de_exercicios/1.json
  def update
    respond_to do |format|
      if @tipo_de_exercicio.update(tipo_de_exercicio_params)
        format.html { redirect_to @tipo_de_exercicio, notice: "Tipo de exercicio was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_de_exercicio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_de_exercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_exercicios/1 or /tipo_de_exercicios/1.json
  def destroy
    @tipo_de_exercicio.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_exercicios_url, notice: "Tipo de exercicio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_exercicio
      @tipo_de_exercicio = TipoDeExercicio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_de_exercicio_params
      params.require(:tipo_de_exercicio).permit(:nome, :numero_de_series, :reducao)
    end
end
