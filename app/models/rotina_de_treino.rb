class RotinaDeTreino < ApplicationRecord
  belongs_to :rotina
  belongs_to :treino
  has_many :tipo_de_exercicio_do_treinos
end
