class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
    	t.string :nome, limit: 80
    	t.string :idade
    	t.string :endereco
    	t.string :telefone
    	t.references :user
      t.references :restaurante
    	t.string :cidade
      t.timestamps
    end
  end
end
