% Base de dados de objetivo
:- dynamic objetivo/1.
:- dynamic experiencia/1.
:- dynamic disponibilidade/1.

treino(hipertrofia) :-
    objetivo(ganhar_massa),
    experiencia(intermediario),
    disponibilidade(todas_as_semanas),
    write('Plano de treino para hipertrofia (ganho de massa muscular):'), nl,
    write('Exercicio 1: Agachamento - 4 series de 8-12 repeticões'), nl,
    write('Exercicio 2: Supino reto - 4 series de 8-12 repeticões'), nl,
    write('Exercicio 3: Remada curvada - 3 series de 8-12 repeticões'), nl,
    write('Exercicio 4: Desenvolvimento de ombro - 3 series de 8-12 repeticões'), nl.

treino(perda_de_peso) :-
    objetivo(emagrecer),
    experiencia(iniciante),
    disponibilidade(tempo_limitado),
    write('Plano de treino para perda de peso (emagrecimento):'), nl,
    write('Exercicio 1: Caminhada rápida - 30 minutos'), nl,
    write('Exercicio 2: Burpees - 3 series de 10 repetições'), nl,
    write('Exercicio 3: Jumping Jacks - 3 series de 15 repetições'), nl,
    write('Exercicio 4: Abdominais - 3 series de 15 repetições'), nl.

treino(condicionamento_fisico) :-
    objetivo(melhorar_condicionamento),
    experiencia(intermediario),
    disponibilidade(todas_as_semanas),
    write('Plano de treino para melhorar o condicionamento físico:'), nl,
    write('Exercicio 1: Corrida contínua - 30 minutos'), nl,
    write('Exercicio 2: Flexões - 3 series de 15 repetições'), nl,
    write('Exercicio 3: Pular corda - 3 series de 2 minutos'), nl,
    write('Exercicio 4: Agachamento - 3 series de 15 repetições'), nl.

definir_objetivo :-
    write('Qual é o seu objetivo? (ganhar_massa, emagrecer, melhorar_condicionamento): '),
    read(Resposta1),
    assertz(objetivo(Resposta1)).

definir_experiencia :-
    write('Qual é o seu nível de experiência? (iniciante, intermediario, avancado): '),
    read(Resposta2),
    assertz(experiencia(Resposta2)).

definir_disponibilidade :-
    write('Qual é a sua disponibilidade de tempo? (tempo_limitado, todas_as_semanas): '),
    read(Resposta3),
    assertz(disponibilidade(Resposta3)).

sugerir_treino :-
    limpar_preferencias,
    definir_objetivo,
    definir_experiencia,
    definir_disponibilidade,
    (   recomendar_treino
    ->  true
    ;   write('Não foi possível encontrar um treino adequado para os critérios fornecidos.'), nl).

recomendar_treino :-
    treino(Treino),
    write('Treino recomendado: '), write(Treino), nl,
    fail.

recomendar_treino.

limpar_preferencias :-
    retractall(objetivo(_)),
    retractall(experiencia(_)),
    retractall(disponibilidade(_)).

% Instruções para iniciar o programa:
% 1. Carregue o programa no SWI-Prolog usando [arquivo].
% 2. Inicie a recomendação de treinos com o comando: sugerir_treino.
