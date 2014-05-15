#coding:utf-8
class Cliente < ActiveRecord::Base
  attr_accessible :nome, :idade, :endereco, :telefone, :cidade, :user_id, :restaurante_id
  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_presence_of :endereco, message: " - deve ser preenchido"
  validates_presence_of :restaurante_id, message: " - deve ser preenchido"
  validates_presence_of :cidade, message: " - deve ser preenchido"
validates_uniqueness_of :nome, message: " - nome já cadastrado"
validates_numericality_of :idade, greater_than: 15,
less_than: 100,
:message =>" -  cliente deve ser maior de 16 anos"
has_many :qualificacoes
belongs_to :user
belongs_to :restaurante
has_many :comentarios
end
