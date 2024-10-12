.set macro 		#Para chamar um arquivo externo
.include "menuInicial.asm" 	#Para chamar o arquivo externo
.data
.text
main:
jal cor 		
jal def_fundo

menu()		#Para chamar uma funcao que esta em outro arquivo - ela esta associada a .set macro


.set nomacro 		#Para determinar que acabou de chamar o arquivo externo
cor:
addi $20, $0, 0x000000	#Cor preta
addi $21, $0, 0x4169E1	#Cor azul
addi $22, $0, 0xffff00	#Cor amarela
addi $23, $0, 0xcfba95 	#Cor pontuacao
addi $24, $0, 0xDC143C
addi $26, $0, 0xffa500  #laranja
addi $27, $0, 0xff6600  #laranja forte
addi $28, $0, 0xff0000  #vermelho gameover
addi $29, $0, 0x808080  #cinza
addi $30, $0, 0xffffff  #branco
addi $25, $0, 0xff007f  #rosa
addi $19, $0, 0x00ff00  #verde
addi $18, $0, 0x00a8ff
addi $17, $0, 0x964b00
jr $31

def_fundo:
addi $9, $0, 8192	#Tamanho do fundo
add $10, $0, $9		#Posicao inicial	
lui $10, 0x1001		#Setar o primeiro pixel
jr $31 

