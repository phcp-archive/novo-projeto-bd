class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :ddd
      t.string :numero
      t.references :telefonavel, :polymorphic => true

      t.timestamps
    end
  end
end
