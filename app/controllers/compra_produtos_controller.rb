class CompraProdutosController < ApplicationController
  before_action :set_compra_produto, only: [:show, :edit, :update, :destroy]

  # GET /compra_produtos
  # GET /compra_produtos.json
  def index
    @compra_produtos = CompraProduto.all
  end

  # GET /compra_produtos/1
  # GET /compra_produtos/1.json
  def show
  end

  # GET /compra_produtos/new
  def new
    @compra_produto = CompraProduto.new
  end

  # GET /compra_produtos/1/edit
  def edit
  end

  # POST /compra_produtos
  # POST /compra_produtos.json
  def create
    @compra_produto = CompraProduto.new(compra_produto_params)

    respond_to do |format|
      if @compra_produto.save
        @compra_produto.produto_comprados.each do |item|
          i = Produto.find(item.produto_id)
          i.quantidade = i.quantidade + item.quantidade
          i.save
        end
        format.html { redirect_to @compra_produto, notice: 'Compra produto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @compra_produto }
      else
        format.html { render action: 'new' }
        format.json { render json: @compra_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_produtos/1
  # PATCH/PUT /compra_produtos/1.json
  def update
    respond_to do |format|
      if @compra_produto.update(compra_produto_params)
        format.html { redirect_to @compra_produto, notice: 'Compra produto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @compra_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_produtos/1
  # DELETE /compra_produtos/1.json
  def destroy
    @compra_produto.produto_comprados.each do |item|
      i = Produto.find(item.produto_id)
      i.quantidade = i.quantidade - item.quantidade
      i.save
    end
    @compra_produto.destroy
    respond_to do |format|
      format.html { redirect_to compra_produtos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_produto
      @compra_produto = CompraProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_produto_params
      params.require(:compra_produto).permit(:data, :status, :pagamento, :fornecedor_id, :produto_comprados_attributes => [:id, :quantidade, :_destroy, :produto_id])
    end
end
