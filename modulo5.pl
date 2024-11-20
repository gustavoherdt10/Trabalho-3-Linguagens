% Base de dados de evidência
:- dynamic impressao_digital/1.
:- dynamic motivo/1.
:- dynamic testemunha/1.
:- dynamic relacao/1.


suspeito(jose) :-
    impressao_digital(lugar_crime),
    motivo(financeiro).

suspeito(maria) :-
    testemunha(visto_discutindo),
    relacao(intima).

suspeito(carlos) :-
    impressao_digital(lugar_crime),
    motivo(pessoal).

teoria(crime_passional) :-
    testemunha(visto_discutindo),
    relacao(intima).

teoria(crime_roubo) :-
    motivo(financeiro),
    impressao_digital(lugar_crime).

definir_impressao_digital :-
    write('Foi encontrada impressão digital no lugar do crime? (sim/nao): '),
    read(Resposta1),
    (Resposta1 == sim -> assertz(impressao_digital(lugar_crime)); true).

definir_motivo :-
    write('O motivo do crime foi financeiro ou pessoal? (financeiro/pessoal): '),
    read(Resposta2),
    assertz(motivo(Resposta2)).

definir_testemunha :-
    write('Houve testemunha ocular do crime? (sim/nao): '),
    read(Resposta3),
    (Resposta3 == sim -> assertz(testemunha(visto_discutindo)); true).

definir_relacao :-
    write('Os envolvidos tinham uma relação íntima? (sim/nao): '),
    read(Resposta4),
    (Resposta4 == sim -> assertz(relacao(intima)); true).

analisar_caso :-
    limpar_dados,
    definir_impressao_digital,
    definir_motivo,
    definir_testemunha,
    definir_relacao,
    (   investigar_suspeitos
    ->  true
    ;   write('Não foi possível identificar um suspeito específico. A investigação deve continuar.'), nl),
    (   investigar_teorias
    ->  true
    ;   write('Não foi possível identificar uma teoria do crime específica.'), nl).

investigar_suspeitos :-
    suspeito(Suspeito),
    write('Suspeito identificado: '), write(Suspeito), nl,
    fail.

investigar_suspeitos.

investigar_teorias :-
    teoria(Teoria),
    write('Teoria do crime sugerida: '), write(Teoria), nl,
    fail.

investigar_teorias.

limpar_dados :-
    retractall(impressao_digital(_)),
    retractall(motivo(_)),
    retractall(testemunha(_)),
    retractall(relacao(_)).

% Instruções para iniciar o programa:
% 1. Carregue o programa no SWI-Prolog usando [arquivo].
% 2. Inicie a análise de caso com o comando: analisar_caso.
