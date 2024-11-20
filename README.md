TRABALHO 3 LINGUAGENS E PARADIGMAS - MÓDULOS EM PROLOG
INSTALAÇÃO DO COMPILADOR PROLOG
Para executar os módulos Prolog, você precisará instalar o compilador SWI-Prolog. Siga os passos abaixo para instalação:

No Windows:
Acesse o site oficial do SWI-Prolog: https://www.swi-prolog.org/Download.html.
Baixe o instalador para Windows e siga as instruções de instalação.
Após a instalação, você pode abrir o SWI-Prolog clicando no ícone do programa.
No macOS:
Use o Homebrew para instalar o SWI-Prolog com o seguinte comando:
bash
Copiar código
brew install swi-prolog
No Linux:
No Ubuntu ou Debian, você pode instalar o SWI-Prolog com o seguinte comando:

bash
Copiar código
sudo apt-get install swi-prolog
Em outras distribuições, consulte o gerenciador de pacotes apropriado para instalar o SWI-Prolog.

Verificação da instalação:
Após a instalação, abra o terminal ou prompt de comando e execute:

bash
Copiar código
swipl
O ambiente interativo do SWI-Prolog será iniciado se a instalação for bem-sucedida.

MÓDULO 1 - Diagnóstico Médico
Objetivo:
Criar um sistema especialista que sugira diagnósticos médicos com base em sintomas informados pelo usuário.

Como funciona:
Este módulo permite que o usuário insira sintomas como febre, tosse, dor de cabeça, entre outros, e fornece um diagnóstico provável, como gripe, infecção viral ou enxaqueca.

Como executar:
Carregue o arquivo no SWI-Prolog com o comando:
prolog
Copiar código
[diagnostico_medico].
Inicie o diagnóstico com o predicado:
prolog
Copiar código
diagnosticar.
MÓDULO 2 - Análise de Problemas de Veículos
Objetivo:
Desenvolver um sistema especialista que ajude a identificar problemas comuns em veículos com base em sintomas ou comportamentos relatados.

Como funciona:
O sistema recebe informações sobre o comportamento do veículo (ex: motor não liga, barulho estranho ao frear) e sugere diagnósticos, como verificar a bateria ou o sistema de freios.

Como executar:
Carregue o arquivo no SWI-Prolog com o comando:
prolog
Copiar código
[problemas_veiculo].
Inicie a análise do problema com o predicado:
prolog
Copiar código
diagnosticar.
MÓDULO 3 - Recomendações de Livros
Objetivo:
Criar um sistema especialista que recomende livros com base em preferências de gênero e interesses do usuário.

Como funciona:
O sistema faz perguntas sobre os gêneros e interesses do usuário, como ficção, história ou ciência, e sugere livros de acordo com as respostas.

Como executar:
Carregue o arquivo no SWI-Prolog com o comando:
prolog
Copiar código
[recomendacao_livros].
Inicie a recomendação de livros com o predicado:
prolog
Copiar código
recomendar_livros.
MÓDULO 4 - Recomendação de Treinos de Academia
Objetivo:
Desenvolver um sistema especialista que sugira treinos de academia baseados em objetivos, como perder peso, ganhar massa muscular ou melhorar o condicionamento físico.

Como funciona:
O sistema faz perguntas sobre os objetivos do usuário (ex: ganhar massa, emagrecer), sua experiência e disponibilidade de tempo para sugerir um treino adequado.

Como executar:
Carregue o arquivo no SWI-Prolog com o comando:
prolog
Copiar código
[recomendacao_treinos].
Inicie a recomendação de treino com o predicado:
prolog
Copiar código
recomendar_treino.
MÓDULO 5 - Análise de Investigação Criminal
Objetivo:
Criar um sistema especialista que auxilie na análise de casos criminais, sugerindo suspeitos ou cenários com base em evidências e testemunhos.

Como funciona:
O sistema recebe informações sobre evidências (ex: impressões digitais, motivo) e testemunhos (ex: testemunha ocular) e sugere suspeitos e teorias sobre o crime.

Como executar:
Carregue o arquivo no SWI-Prolog com o comando:
prolog
Copiar código
[investigacao_criminal].
Inicie a análise do caso com o predicado:
prolog
Copiar código
analisar_caso.
AUTOR
Este programa foi desenvolvido por Gustavo Herdt. @gustavoherdt10.
