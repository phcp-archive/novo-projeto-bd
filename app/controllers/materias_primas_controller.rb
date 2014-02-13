class MateriasPrimasController < ApplicationController
  before_action :set_materia_prima, only: [:show, :edit, :update, :destroy]

  # GET /materias_primas
  # GET /materias_primas.json
  def index
    @materias_primas = MateriaPrima.search(params[:search], params[:id])
  end

  # GET /materias_primas/1
  # GET /materias_primas/1.json
  def show
  end

  def list
    @materias_primas = MateriaPrima.where("quantidade > '10'")
  end

  # GET /materias_primas/new
  def new
    @materia_prima = MateriaPrima.new
  end

  # GET /materias_primas/1/edit
  def edit
  end

  # POST /materias_primas
  # POST /materias_primas.json
  def create
    @materia_prima = MateriaPrima.new(materia_prima_params)

    respond_to do |format|
      if @materia_prima.save
        format.html { redirect_to @materia_prima, notice: 'Materia prima was successfully created.' }
        format.json { render action: 'show', status: :created, location: @materia_prima }
      else
        format.html { render action: 'new' }
        format.json { render json: @materia_prima.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materias_primas/1
  # PATCH/PUT /materias_primas/1.json
  def update
    respond_to do |format|
      if @materia_prima.update(materia_prima_params)
        format.html { redirect_to @materia_prima, notice: 'Materia prima was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @materia_prima.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materias_primas/1
  # DELETE /materias_primas/1.json
  def destroy
    @materia_prima.destroy
    respond_to do |format|
      format.html { redirect_to materias_primas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia_prima
      @materia_prima = MateriaPrima.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_prima_params
      params.require(:materia_prima).permit(:nome, :codigo, :descricao, :quantidade, :producoes_ids, :compra_materias_primas_ids)
    end
end
