old_occupations = [
  {:old => ['agricultor', 'Agricultora', 'Cortador de Cana', 'Corte de cana de açúcar', 'lavrador', 'Lavrador Rural', 'lavradora', 'lavradorora', 'lavrador'], :new => 1},
  {:old => ['Leiteiro', 'Trabalhador Rural', 'Corraleiro', 'Curraleiro', 'Curralheiro', 'trabalhador rural', 'Trabalhadora rural', 'Tratorista', 'Vaqueira', 'Vaqueiro', 'Campeiro', 'Pecuarista'], :new => 2},
  {:old => ['Ajudante de obras', 'Ajudante de Pedreiro', 'Auxiliar de pedreiro', 'Pintor', 'Pedreiro', 'Serralheiro', 'Cacimbeiro', 'Carpinteiro'], :new => 3},
  {:old => ['Aposentada', 'Aposentado'], :new => 4},  
  {:old => ['Barbeiro', 'Comerciante', 'Costureira', 'Frentista'], :new => 5},
  {:old => ['Desempregada', 'desempregado'], :new => 6},
  {:old => ['empregada doméstica', 'Doméstica', 'Faxineira', 'Diarista'], :new => 7},
  {:old => ['Dona de Casa', 'Do Lar'], :new => 8},
  {:old => ['Operador de escavadeira', 'Operador de Máquinas'], :new => 9},
  {:old => ['Biscate'], :new => 10},
  {:old => ['Estudante'], :new => 11},
  {:old => ['Líder religioso'], :new => 12},
  {:old => ['cozinheira', 'Salgadeira', 'Tapioqueiro', 'Tapioquiero', 'Padeiro', 'merendeira'], :new => 13},
  {:old => ['Pescador', 'Pescadora', 'pescador', 'Marinheiro', 'Marisqueira', 'Caranguejeira', 'Descascardora de camarão'], :new => 14},
  {:old => ['Servente', 'Serviços Gerais', 'Serviços Gerais (Faxineira)', 'serviços gerais-limpeza pública', 'Gari', 'Jardineiro', 'Motorista', 'Cuida de Idoso', 'Entregador'], :new => 15},
  {:old => ['Toca instrumentos nos bailes'], :new => 16}
]


Student.all.each do |s|
  old_occupations.each do |o|
    if o[:old].include?(s.profession)
      s.occupation_id = o[:new]
    end
    s.save
  end
end

#asas
#não alfabetizado
#não possui
#Nenhuma







