class EnderecosController < ApplicationController
  before_action :set_endereco, only: [:show, :edit, :update, :destroy]

  # GET /enderecos
  # GET /enderecos.json
  def index
    @enderecos = Endereco.all
  end

  # GET /enderecos/1
  # GET /enderecos/1.json
  def show
  end

  # GET /enderecos/new
  def new
    @endereco = Endereco.new
  end

  # GET /enderecos/1/edit
  def edit
  end

  # POST /enderecos
  # POST /enderecos.json
  def create
    @endereco = Endereco.new(endereco_params)

    respond_to do |format|
      if @endereco.save
        format.html { redirect_to @endereco, notice: 'Endereco was successfully created.' }
        format.json { render action: 'show', status: :created, location: @endereco }
      else
        format.html { render action: 'new' }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enderecos/1
  # PATCH/PUT /enderecos/1.json
  def update
    respond_to do |format|
      if @endereco.update(endereco_params)
        format.html { redirect_to @endereco, notice: 'Endereco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enderecos/1
  # DELETE /enderecos/1.json
  def destroy
    @endereco.destroy
    respond_to do |format|
      format.html { redirect_to enderecos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      @endereco = Endereco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endereco_params
      params.require(:endereco).permit(:bairro, :cep, :cidade, :logradouro, :complemento, :estado, :numero, :enderecavel_id)
    end
end
