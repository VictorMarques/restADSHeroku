class Comentario < ActiveRecord::Base
  attr_accessible :comentavel_id, :comentavel_type, :conteudo, :restaurante_id, :cliente_id
  belongs_to :comentavel, polymorphic: true
  belongs_to :restaurante
  belongs_to :cliente

end
