class Rotina < ApplicationRecord
  has_many :tipo_de_treinos
  has_many :rotina_de_treinos
end
