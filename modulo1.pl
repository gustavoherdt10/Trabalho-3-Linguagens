% base de sintomas
:- dynamic sintoma/1.

% regras diagnostico
doenca(gripe) :-
    sintoma(febre),
    sintoma(tosse),
    sintoma(cansaco).

doenca(infeccao_viral) :-
    sintoma(febre),
    sintoma(dor_de_garganta),
    sintoma(dor_muscular).

doenca(enxaqueca) :-
    sintoma(dor_de_cabeca),
    sintoma(nausea),
    sintoma(sensibilidade_a_luz).

% função diagnóstico
diagnosticar :-
    limpar_sintomas,
    coletar_sintomas,
    (   diagnosticar_doenca
    ->  true
    ;   write('nao foi possivel identificar uma doenca especifica. consulte um medico.'), nl).

coletar_sintomas :-
    perguntar_sintoma(febre),
    perguntar_sintoma(tosse),
    perguntar_sintoma(cansaco),
    perguntar_sintoma(dor_de_garganta),
    perguntar_sintoma(dor_muscular),
    perguntar_sintoma(dor_de_cabeca),
    perguntar_sintoma(nausea),
    perguntar_sintoma(sensibilidade_a_luz).

perguntar_sintoma(Sintoma) :-
    format('voce tem ~w? (sim/nao): ', [Sintoma]),
    read(Resposta),
    atualizar_sintoma(Sintoma, Resposta).

atualizar_sintoma(Sintoma, sim) :-
    assertz(sintoma(Sintoma)).

atualizar_sintoma(_, nao).

diagnosticar_doenca :-
    doenca(Doenca),
    write('diagnostico provavel: '), write(Doenca), nl, fail.

diagnosticar_doenca.

limpar_sintomas :-
    retractall(sintoma(_)).

% instruções para iniciar o programa
% 1. carregue o programa no swi-prolog usando [arquivo].
% 2. inicie o diagnóstico com o comando: diagnosticar.