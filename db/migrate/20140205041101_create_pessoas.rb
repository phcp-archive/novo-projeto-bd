class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cadastro
      t.string :email
      t.boolean :juridico

      t.timestamps
    end
  end
end
