class TipoDeExercicioDoTreinosController < ApplicationController
  before_action :set_tipo_de_exercicio_do_treino, only: %i[ show edit update destroy ]

  # GET /tipo_de_exercicio_do_treinos or /tipo_de_exercicio_do_treinos.json
  def index
    @tipo_de_exercicio_do_treinos = TipoDeExercicioDoTreino.all
  end

  # GET /tipo_de_exercicio_do_treinos/1 or /tipo_de_exercicio_do_treinos/1.json
  def show
  end

  # GET /tipo_de_exercicio_do_treinos/new
  def new
    @tipo_de_exercicio_do_treino = TipoDeExercicioDoTreino.new
  end

  # GET /tipo_de_exercicio_do_treinos/1/edit
  def edit
  end

  # POST /tipo_de_exercicio_do_treinos or /tipo_de_exercicio_do_treinos.json
  def create
    @tipo_de_exercicio_do_treino = TipoDeExercicioDoTreino.new(tipo_de_exercicio_do_treino_params)

    respond_to do |format|
      if @tipo_de_exercicio_do_treino.save
        format.html { redirect_to tipo_de_exercicio_do_treinos_url, notice: "Tipo de exercicio do treino was successfully created." }
        format.json { render :show, status: :created, location: @tipo_de_exercicio_do_treino }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_de_exercicio_do_treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_exercicio_do_treinos/1 or /tipo_de_exercicio_do_treinos/1.json
  def update
    respond_to do |format|
      if @tipo_de_exercicio_do_treino.update(tipo_de_exercicio_do_treino_params)
        format.html { redirect_to tipo_de_exercicio_do_treinos_url, notice: "Tipo de exercicio do treino was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_de_exercicio_do_treino }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_de_exercicio_do_treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_exercicio_do_treinos/1 or /tipo_de_exercicio_do_treinos/1.json
  def destroy
    @tipo_de_exercicio_do_treino.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_exercicio_do_treinos_url, notice: "Tipo de exercicio do treino was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_exercicio_do_treino
      @tipo_de_exercicio_do_treino = TipoDeExercicioDoTreino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_de_exercicio_do_treino_params
      params.require(:tipo_de_exercicio_do_treino).permit(:rotina_de_treino_id, :tipo_de_exercicio_id)
    end
end
