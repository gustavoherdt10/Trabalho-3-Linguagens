% base de dados de livros
:- dynamic genero/1.
:- dynamic interesse/1.

% regras para recomendacao
recomendar('1984', 'uma distopia politica sobre vigilancia e controle.') :-
    genero(ficcao),
    interesse(politica).

recomendar('sapiens', 'uma analise da historia da humanidade, desde a pre-historia ate os dias atuais.') :-
    genero(historia),
    interesse(ciencia).

recomendar('o pequeno principe', 'uma historia poetica sobre amizade, amor e valores essenciais da vida.') :-
    genero(ficcao),
    interesse(filosofia).

recomendar('mindset', 'um guia para entender e desenvolver uma mentalidade de crescimento.') :-
    genero(autoajuda),
    interesse(psicologia).

recomendar('a arte da guerra', 'estrategias classicas para lideranca e planejamento.') :-
    genero(historia),
    interesse(estrategia).

recomendar_livros :-
    limpar_preferencias,
    coletar_preferencias,
    (   listar_recomendacoes
    ->  true
    ;   write('nao foi possivel encontrar livros com base nas preferencias informadas.'), nl).

coletar_preferencias :-
    perguntar_genero(ficcao),
    perguntar_genero(historia),
    perguntar_genero(autoajuda),
    perguntar_interesse(politica),
    perguntar_interesse(ciencia),
    perguntar_interesse(filosofia),
    perguntar_interesse(psicologia),
    perguntar_interesse(estrategia).

perguntar_genero(Genero) :-
    format('voce gosta do genero ~w? (sim/nao): ', [Genero]),
    read(Resposta),
    atualizar_genero(Genero, Resposta).

perguntar_interesse(Interesse) :-
    format('voce tem interesse em ~w? (sim/nao): ', [Interesse]),
    read(Resposta),
    atualizar_interesse(Interesse, Resposta).

atualizar_genero(Genero, sim) :-
    assertz(genero(Genero)).

atualizar_genero(_, nao).

atualizar_interesse(Interesse, sim) :-
    assertz(interesse(Interesse)).

atualizar_interesse(_, nao).

listar_recomendacoes :-
    recomendar(Livro, Sinopse),
    format('recomendacao: ~w - ~w', [Livro, Sinopse]), nl,
    fail.

listar_recomendacoes.

limpar_preferencias :-
    retractall(genero(_)),
    retractall(interesse(_)).

% instruções para iniciar o programa
% 1. carregue o programa no swi-prolog usando [arquivo].
% 2. inicie as recomendações com o comando: recomendar_livros.