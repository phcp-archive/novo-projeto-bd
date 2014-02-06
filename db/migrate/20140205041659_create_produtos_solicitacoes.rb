class CreateProdutosSolicitacoes < ActiveRecord::Migration
  def change
    create_table :produtos_solicitacoes, :id => false do |t|
    	t.integer :produto_id
    	t.integer :solicitacao_id
    end
  end
end
