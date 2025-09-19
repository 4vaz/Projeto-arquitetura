;---------------------------------------------------
; Programa: Contador de numeros pares e impares
; Autor: Lucas Vaz
; Data: 19/09/2025
;---------------------------------------------------
; Contador de Numeros Pares e impares 

LDA #1       ; Carrega 1 no acumulador
STA [2]      ; Armazena 1 no endereço 2 (constante para verificação de paridade)

; Lê o primeiro número
IN           ; Lê entrada do usuário
STA [0]      ; Armazena no endereço 0

; Lê o segundo número
IN           ; Lê outra entrada
STA [1]      ; Armazena no endereço 1

; Verifica primeiro número
LDA [0]      ; Carrega primeiro número
AND [2]      ; Aplica AND com 1
JZ 20        ; Se resultado zero, pula para endereço 20 (par)
LDA #1       ; Caso contrário, carrega 1 (ímpar)
OUT          ; Exibe 1
JMP 22       ; Pula para verificação do segundo número

; Primeiro número par
LDA #0       ; Carrega 0 (par)
OUT          ; Exibe 0

; Verifica segundo número
LDA [1]      ; Carrega segundo número
AND [2]      ; Aplica AND com 1
JZ 32        ; Se resultado zero, pula para endereço 32 (par)
LDA #1       ; Caso contrário, carrega 1 (ímpar)
OUT          ; Exibe 1
JMP 34       ; Pula para o final

; Segundo número par
LDA #0       ; Carrega 0 (par)
OUT          ; Exibe 0

; Final do programa
HLT          ; Para a execução
