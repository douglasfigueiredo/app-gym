class RotinaDeTreinosController < ApplicationController
  before_action :set_rotina_de_treino, only: %i[ show edit update destroy ]
  before_action :set_rotina

  # GET /rotina_de_treinos or /rotina_de_treinos.json
  def index
    @rotina_de_treinos = RotinaDeTreino.where(rotina_id: @rotina.id)
  end

  # GET /rotina_de_treinos/1 or /rotina_de_treinos/1.json
  def show
  end

  # GET /rotina_de_treinos/new
  def new
    @rotina_de_treino = RotinaDeTreino.new
  end

  # GET /rotina_de_treinos/1/edit
  def edit
  end

  # POST /rotina_de_treinos or /rotina_de_treinos.json
  def create
    @rotina_de_treino = RotinaDeTreino.new(rotina_de_treino_params)
    @rotina_de_treino.rotina = @rotina
    respond_to do |format|
      if @rotina_de_treino.save
        format.html { redirect_to rotina_rotina_de_treinos_path(@rotina), notice: "Rotina de treino was successfully created." }
        format.json { render :show, status: :created, location: [@rotina_de_treino, @rotina] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rotina_de_treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotina_de_treinos/1 or /rotina_de_treinos/1.json
  def update
    respond_to do |format|
      if @rotina_de_treino.update(rotina_de_treino_params)
        format.html { redirect_to rotina_rotina_de_treinos_path(@rotina), notice: "Rotina de treino was successfully updated." }
        format.json { render :show, status: :ok, location: @rotina_de_treino }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rotina_de_treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotina_de_treinos/1 or /rotina_de_treinos/1.json
  def destroy
    @rotina_de_treino.destroy
    respond_to do |format|
      format.html { redirect_to rotina_rotina_de_treinos_path(@rotina), notice: "Rotina de treino was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotina
      @rotina = Rotina.find(params[:rotina_id])
    end
    def set_rotina_de_treino
      @rotina_de_treino = RotinaDeTreino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rotina_de_treino_params
      params.require(:rotina_de_treino).permit(:rotina_id, :treino_id)
    end
end
