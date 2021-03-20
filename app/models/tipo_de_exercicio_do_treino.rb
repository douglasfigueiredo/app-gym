class TipoDeExercicioDoTreino < ApplicationRecord
  belongs_to :rotina_de_treino
  belongs_to :tipo_de_exercicio
end
