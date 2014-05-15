class Qualificacao < ActiveRecord::Base
  attr_accessible :nota, :valor_gasto, :cliente_id, :restaurante_id, :user_id

    validates_presence_of :nota, message: " - deve ser preenchido"
    validates_presence_of :restaurante_id, message: " - deve ser preenchido"
    validates_presence_of :cliente_id, message: " - deve ser preenchido"

  belongs_to :cliente
  belongs_to :restaurante
  belongs_to :user
  has_many :comentarios, as: :comentavel
end
