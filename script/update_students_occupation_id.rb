old_occupations = [
  {:old => ['agricultor','AGRICULTOR', 'Agricultor','Agricultora', 'Cortador de Cana', 'Corte de cana de açúcar', 'Lavrador rural','Lavrador ', 'lavrador', 'Lavrador Rural', 'Lavrador', 'Lavradora', 'lavradora', 'lavradorora', 'lavrador'], :new => 1},
  {:old => ['Leiteiro', 'Trabalhador Rural', 'Trabalhador rural', 'Corraleiro', 'Curraleiro', 'Curralheiro', 'trabalhador rural', 'Trabalhadora Rural','Trabalhadora rural', 'Tratorista', 'Vaqueira', 'Vaqueiro', 'Campeiro', 'Pecuarista'], :new => 2},
  {:old => ['Ajudante de obras', 'Ajudante de Pedreiro', 'pedreiro','Auxiliar de pedreiro', 'Pintor', 'Pedreiro', 'Pedreiro ', 'Serralheiro', 'Cacimbeiro', 'Carpinteiro'], :new => 3},
  {:old => ['Aposentada', 'Aposentado'], :new => 4},  
  {:old => ['Barbeiro', 'Comerciante', 'Costureira', 'Frentista'], :new => 5},
  {:old => ['Desempregada', 'desempregado'], :new => 6},
  {:old => ['empregada doméstica', 'Doméstica', 'Domestica', 'Faxineira', 'Diarista', 'DOméstica', 'Empregada Doméstica'], :new => 7},
  {:old => ['Dona de Casa', 'Do Lar', 'Do lar', 'do lar'], :new => 8},
  {:old => ['Operador de escavadeira', 'Operador de Máquinas', 'Operador de máquinas'], :new => 9},
  {:old => ['Biscate'], :new => 10},
  {:old => ['Estudante'], :new => 11},
  {:old => ['Líder religioso'], :new => 12},
  {:old => ['cozinheira', 'Salgadeira', 'Tapioqueiro', 'Tapioquiero', 'Padeiro', 'merendeira', 'Merendeira'], :new => 13},
  {:old => ['Pescador', 'Pescador ', 'Pescadora', 'pescador', 'Marinheiro', 'Marinheiro ', 'Marisqueira', 'Caranguejeira', 'Descascardora de camarão'], :new => 14},
  {:old => ['Servente', 'Serviços Gerais', 'Serviços Gerais (Faxineira)', 'serviços gerais-limpeza pública', 'gari', 'Gari', 'jardineiro', 'Jardineiro ','Jardineiro', 'Motorista', 'Cuida de Idoso', 'Entregador'], :new => 15},
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







