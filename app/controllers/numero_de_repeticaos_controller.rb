class NumeroDeRepeticaosController < ApplicationController
  before_action :set_numero_de_repeticao, only: %i[ show edit update destroy ]

  # GET /numero_de_repeticaos or /numero_de_repeticaos.json
  def index
    @numero_de_repeticaos = NumeroDeRepeticao.all
  end

  # GET /numero_de_repeticaos/1 or /numero_de_repeticaos/1.json
  def show
  end

  # GET /numero_de_repeticaos/new
  def new
    @numero_de_repeticao = NumeroDeRepeticao.new
  end

  # GET /numero_de_repeticaos/1/edit
  def edit
  end

  # POST /numero_de_repeticaos or /numero_de_repeticaos.json
  def create
    @numero_de_repeticao = NumeroDeRepeticao.new(numero_de_repeticao_params)

    respond_to do |format|
      if @numero_de_repeticao.save
        format.html { redirect_to @numero_de_repeticao, notice: "Numero de repeticao was successfully created." }
        format.json { render :show, status: :created, location: @numero_de_repeticao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @numero_de_repeticao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numero_de_repeticaos/1 or /numero_de_repeticaos/1.json
  def update
    respond_to do |format|
      if @numero_de_repeticao.update(numero_de_repeticao_params)
        format.html { redirect_to @numero_de_repeticao, notice: "Numero de repeticao was successfully updated." }
        format.json { render :show, status: :ok, location: @numero_de_repeticao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @numero_de_repeticao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numero_de_repeticaos/1 or /numero_de_repeticaos/1.json
  def destroy
    @numero_de_repeticao.destroy
    respond_to do |format|
      format.html { redirect_to numero_de_repeticaos_url, notice: "Numero de repeticao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numero_de_repeticao
      @numero_de_repeticao = NumeroDeRepeticao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def numero_de_repeticao_params
      params.require(:numero_de_repeticao).permit(:titulo, :min, :max, :genero)
    end
end
