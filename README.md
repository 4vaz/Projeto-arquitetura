Documentação do Código NeanderWin - Verificador de Paridade

Descrição Geral

Este programa para o NeanderWin solicita dois números ao usuário e determina se cada um é par ou ímpar, exibindo 0 para par e 1 para ímpar.

Estrutura de Memória
Endereço 0: Armazena o primeiro número

Endereço 1: Armazena o segundo número

Endereço 2: Armazena a constante 1 para operações de verificação

Fluxo do Programa
1. Configuração Inicial
assembly
LDA #1       ; Carrega o valor 1 no acumulador
STA [2]      ; Armazena 1 no endereço 2 (constante para verificação)
Propósito: Prepara o valor 1 que será usado como máscara para testar o bit menos significativo.

2. Leitura dos Números
assembly
IN           ; Lê o primeiro número do usuário
STA [0]      ; Armazena no endereço 0

IN           ; Lê o segundo número do usuário
STA [1]      ; Armazena no endereço 1
Propósito: Obtém os dois valores de entrada do usuário através do dispositivo de entrada.

3. Verificação do Primeiro Número
assembly
LDA [0]      ; Carrega o primeiro número
AND [2]      ; Aplica operação AND com 1 (testa o bit menos significativo)
JZ 20        ; Se resultado zero, pula para rótulo "Primeiro número par"
LDA #1       ; Caso contrário, carrega 1 (ímpar)
OUT          ; Exibe 1
JMP 22       ; Pula para verificação do segundo número
Lógica: Testa se o bit menos significativo é 0 (par) ou 1 (ímpar).

4. Primeiro Número Par
assembly
LDA #0       ; Carrega 0 (par)
OUT          ; Exibe 0
Propósito: Executado quando o primeiro número é par.

5. Verificação do Segundo Número
assembly
LDA [1]      ; Carrega o segundo número
AND [2]      ; Aplica AND com 1
JZ 32        ; Se resultado zero, pula para rótulo "Segundo número par"
LDA #1       ; Caso contrário, carrega 1 (ímpar)
OUT          ; Exibe 1
JMP 34       ; Pula para o final do programa
Lógica: Aplica a mesma verificação de paridade para o segundo número.

6. Segundo Número Par
assembly
LDA #0       ; Carrega 0 (par)
OUT          ; Exibe 0
Propósito: Executado quando o segundo número é par.

7. Finalização
assembly
HLT          ; Termina a execução do programa
Algoritmo de Verificação de Paridade
O programa utiliza uma operação AND bit a bit com o valor 1 para verificar a paridade:

Se (número AND 1) = 0 → número é par

Se (número AND 1) = 1 → número é ímpar

Exemplo de Execução
Entrada: 5 (primeiro número), 8 (segundo número)
Saída: 1 (5 é ímpar), 0 (8 é par)

Observações
O programa assume que as entradas são números inteiros

A saída será dois dígitos (0 ou 1) representando a paridade de cada número em ordem

O NeanderWin usa o endereço 255 para operações de entrada/saída

