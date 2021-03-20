class RotinasController < ApplicationController
  before_action :set_rotina, only: %i[ show edit update destroy ]

  # GET /rotinas or /rotinas.json
  def index
    @rotinas = Rotina.order(created_at: :ASC).all
  end

  # GET /rotinas/1 or /rotinas/1.json
  def show
  end

  # GET /rotinas/new
  def new
    @rotina = Rotina.new
  end

  # GET /rotinas/1/edit
  def edit
  end

  # POST /rotinas or /rotinas.json
  def create
    @rotina = Rotina.new(rotina_params)

    respond_to do |format|
      if @rotina.save
        format.html { redirect_to '/rotinas', notice: "Rotina was successfully created." }
        format.json { render :show, status: :created, location: @rotina }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rotina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rotinas/1 or /rotinas/1.json
  def update
    respond_to do |format|
      if @rotina.update(rotina_params)
        format.html { redirect_to '/rotinas', notice: "Rotina was successfully updated." }
        format.json { render :show, status: :ok, location: @rotina }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rotina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotinas/1 or /rotinas/1.json
  def destroy
    @rotina.destroy
    respond_to do |format|
      format.html { redirect_to rotinas_url, notice: "Rotina was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotina
      @rotina = Rotina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rotina_params
      params.require(:rotina).permit(:nome, :quantidade_dias, :genero)
    end
end
