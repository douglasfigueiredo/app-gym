class TipoDeExercicio < ApplicationRecord
  has_many :exercicios
  
  def nome=(s)
    super s.titleize
  end

end
