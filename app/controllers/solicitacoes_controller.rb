class SolicitacoesController < ApplicationController
  before_filter :require_user
  before_action :set_solicitacao, only: [:show, :edit, :update, :destroy]

  # GET /solicitacoes
  # GET /solicitacoes.json

  def index
    @solicitacoes = Solicitacao.search(params[:search], params[:id])
  end

  def list
    @solicitacoes = Solicitacao.all
  end

  # GET /solicitacoes/1
  # GET /solicitacoes/1.json
  def show
  end

  # GET /solicitacoes/new
  def new
    @solicitacao = Solicitacao.new
  end

  # GET /solicitacoes/1/edit
  def edit
  end

  # POST /solicitacoes
  # POST /solicitacoes.json
  def create
    @solicitacao = Solicitacao.new(solicitacao_params)

    respond_to do |format|
      if @solicitacao.save
        @solicitacao.produto_solicitados.each do |item|
          i = Produto.find(item.produto_id)
          i.quantidade = i.quantidade - item.quantidade
          i.save
        end
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solicitacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacoes/1
  # PATCH/PUT /solicitacoes/1.json
  def update
    respond_to do |format|
      if @solicitacao.update(solicitacao_params)
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacoes/1
  # DELETE /solicitacoes/1.json
  def destroy
    @solicitacao.produto_solicitados.each do |item|
          i = Produto.find(item.produto_id)
          i.quantidade = i.quantidade + item.quantidade
          i.save
        end
    @solicitacao.destroy
    respond_to do |format|
      format.html { redirect_to solicitacoes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao
      @solicitacao = Solicitacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_params
      params.require(:solicitacao).permit(:status, :data, :desconto, :pagamento, :pessoa_id, :produto_solicitados_attributes => [:id, :quantidade, :_destroy, :produto_id])
    end
end
