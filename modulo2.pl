% base de problemas
:- dynamic sintoma/1.

% regras para identificar problemas
problema(bateria_fraca) :-
    sintoma(motor_nao_liga),
    sintoma(luzes_fracas).

problema(freio_desgastado) :-
    sintoma(barulho_ao_frear),
    sintoma(pedal_freio_macio).

problema(vazamento_oleo) :-
    sintoma(manchas_oleo_chao),
    sintoma(nivel_baixo_oleo).

problema(filtro_combustivel_sujo) :-
    sintoma(dificuldade_partida),
    sintoma(perda_potencia).

problema(problema_grave) :-
    sintoma(fumaca_motor),
    sintoma(barulho_metalico).

diagnosticar_veiculo :-
    limpar_sintomas,
    coletar_sintomas_veiculo,
    (   diagnosticar_problema
    ->  true
    ;   write('nao foi possivel identificar o problema. leve o carro a um mecanico.'), nl).

coletar_sintomas_veiculo :-
    perguntar_sintoma(motor_nao_liga),
    perguntar_sintoma(luzes_fracas),
    perguntar_sintoma(barulho_ao_frear),
    perguntar_sintoma(pedal_freio_macio),
    perguntar_sintoma(manchas_oleo_chao),
    perguntar_sintoma(nivel_baixo_oleo),
    perguntar_sintoma(dificuldade_partida),
    perguntar_sintoma(perda_potencia),
    perguntar_sintoma(fumaca_motor),
    perguntar_sintoma(barulho_metalico).

perguntar_sintoma(Sintoma) :-
    format('o veiculo apresenta ~w? (sim/nao): ', [Sintoma]),
    read(Resposta),
    atualizar_sintoma(Sintoma, Resposta).

atualizar_sintoma(Sintoma, sim) :-
    assertz(sintoma(Sintoma)).

atualizar_sintoma(_, nao).

diagnosticar_problema :-
    problema(Problema),
    write('diagnostico provavel: '), write(Problema), nl,
    (   Problema = problema_grave
    ->  write('recomendacao: leve o carro a um mecanico imediatamente.'), nl
    ;   true),
    fail.

diagnosticar_problema.

limpar_sintomas :-
    retractall(sintoma(_)).

% instruções para iniciar o programa
% 1. carregue o programa no swi-prolog usando [arquivo].
% 2. inicie o diagnóstico com o comando: diagnosticar_veiculo.