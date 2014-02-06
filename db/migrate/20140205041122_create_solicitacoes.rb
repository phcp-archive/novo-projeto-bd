class CreateSolicitacoes < ActiveRecord::Migration
  def change
    create_table :solicitacoes do |t|
      t.integer :status
      t.datetime :data
      t.float :desconto
      t.float :pagamento
      t.belongs_to :pessoa, index: true

      t.timestamps
    end
  end
end
