class CreateProdutoSolicitados < ActiveRecord::Migration
  def change
    create_table :produto_solicitados do |t|
      t.integer :produto_id
      t.integer :solicitacao_id

      t.timestamps
    end
  end
end
