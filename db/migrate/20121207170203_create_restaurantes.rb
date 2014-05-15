class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nome, limit: 80
      t.string :endereco
      t.string :telefone
      t.references :user
      t.references :qualificacao
      t.integer :nota_rest
      t.timestamps
    end
  end
end
