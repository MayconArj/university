import cv2
import numpy as np

# parametros
altura_tela = 600
largura_tela = 350
espessura = 2

# criação da janela
janela = np.full((altura_tela, largura_tela, 3), (10, 10, 10), dtype = "uint8")

#--------------------------------------- Chapeu ----------------------------------------
ponto_chapeu_1 = (175, 10)
ponto_chapeu_2 = (70, 130)
ponto_chapeu_3 = (280, 130)
pontos_triangulo = np.array([ponto_chapeu_1, ponto_chapeu_2, ponto_chapeu_3])
cv2.polylines(janela, [pontos_triangulo], isClosed = True, color = (0,255,255), thickness = 3)
#---------------------------------------------------------------------------------------

#--------------------------------------- Cabeça ----------------------------------------
centroc1 = (175, 190)
raioc1 = 70
cor1 = (0, 255, 255)
espessura = 2
cv2.circle(janela, centroc1, raioc1, cor1, espessura)
#---------------------------------------------------------------------------------------

#--------------------------------------- Pescoço ---------------------------------------
pontor1 = (165, 261)
pontor2 = (185, 300)
cor2 = (130, 130, 130)
cv2. rectangle(janela, pontor1, pontor2, cor2, espessura)
#---------------------------------------------------------------------------------------

#--------------------------------------- Torax ---------------------------------------
pontor1 = (90, 301)
pontor2 = (260, 420)
cor2 = (130, 130, 130)
cv2. rectangle(janela, pontor1, pontor2, cor2, espessura)
#---------------------------------------------------------------------------------------

#----------------------------------- Olho esquerdo -------------------------------------
centroc2 = (145, 180)
raioc2 = 11
cor1 = (0, 255, 255)
espessura = 2
cv2.circle(janela, centroc2, raioc2, cor1, espessura)
#---------------------------------------------------------------------------------------

#------------------------------------ Olho direito -------------------------------------
centroc3 = (200, 180)
raioc3 = 11
cor1 = (0, 255, 255)
espessura = 2
cv2.circle(janela, centroc3, raioc3, cor1, espessura)
#---------------------------------------------------------------------------------------

#---------------------------------------- Boca -----------------------------------------
centroe1 = (175, 220)
eixos = (30, 20)
angulo = 0 # ---
inicioAngulo = 0
fimAngulo = 180

cv2.ellipse(janela, centroe1, eixos, angulo, inicioAngulo, fimAngulo, color=(255, 255, 255), thickness=2)
#---------------------------------------------------------------------------------------

#--------------------------------------- Nariz -----------------------------------------
pontor3 = (175, 190)
pontor4 = (176, 202)
cor2 = (130, 130, 130)
cv2. rectangle(janela, pontor3, pontor4, cor2, espessura)
#---------------------------------------------------------------------------------------

#----------------------------------- Braço esquerdo ------------------------------------
ponto_chapeu_4 = (260, 340)
ponto_chapeu_5 = (300, 410)
ponto_chapeu_6 = (300, 410)
pontos_triangulo3 = np.array([ponto_chapeu_4, ponto_chapeu_5, ponto_chapeu_6])
cv2.polylines(janela, [pontos_triangulo3], isClosed = True, color = (0, 10, 255), thickness = 3)
#---------------------------------------------------------------------------------------

#----------------------------------- Braço direito -------------------------------------
ponto_chapeu_7 = (90, 340)
ponto_chapeu_8 = (40, 410)
ponto_chapeu_9 = (40, 410)
pontos_triangulo4 = np.array([ponto_chapeu_7, ponto_chapeu_8, ponto_chapeu_9])
cv2.polylines(janela, [pontos_triangulo4], isClosed = True, color = (0, 10, 155), thickness = 3)
#---------------------------------------------------------------------------------------

#----------------------------------- Perna esquerda ------------------------------------
ponto_chapeu_4 = (195, 420)
ponto_chapeu_5 = (260, 490)
ponto_chapeu_6 = (260, 490)
pontos_triangulo1 = np.array([ponto_chapeu_4, ponto_chapeu_5, ponto_chapeu_6])
cv2.polylines(janela, [pontos_triangulo1], isClosed = True, color = (0, 10, 255), thickness = 3)
#---------------------------------------------------------------------------------------

#----------------------------------- Perna direita -------------------------------------
ponto_chapeu_4 = (155, 420)
ponto_chapeu_5 = (90, 490)
ponto_chapeu_6 = (90, 490)
pontos_triangulo2 = np.array([ponto_chapeu_4, ponto_chapeu_5, ponto_chapeu_6])
cv2.polylines(janela, [pontos_triangulo2], isClosed = True, color = (0, 10, 155), thickness = 3)
#---------------------------------------------------------------------------------------

# Execução da Janela
cv2.imshow("Exercicio do dia 21 05 2024", janela)
cv2. waitKey(0)
cv2. destroyAllWindows()
