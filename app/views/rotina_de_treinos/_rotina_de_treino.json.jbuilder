json.extract! rotina_de_treino, :id
json.rotina @rotina
json.treino rotina_de_treino.treino, :id, :nome

json.tiposDeExercicios rotina_de_treino.tipo_de_exercicio_do_treinos do |tipos|
  json.tipoDeExercicio tipos.tipo_de_exercicio, :id, :nome, :numero_de_series, :reducao, :exercicios, :exercicios
end
