%Definimos los hechos
entrada(antipasto).
entrada(sopa).
entrada(quesos).

carne(milanesa).
carne(bife_de_chorizo).
carne(pollo_asado).

pescado(congrio).
pescado(pejerey).

postre(flan).
postre(helado).
postre(fruta).

calorias(antipasto,78).
calorias(sopa,200).
calorias(quesos,73).
calorias(milanesa,335).
calorias(bife_de_chorizo,206).
calorias(pollo_asado,312).
calorias(congrio,102).
calorias(pejerey,114).
calorias(flan,168).
calorias(helado,201).
calorias(fruta,47).


%Definicion dereglas
plato_principal(P) :- carne(P).
plato_principal(P) :- pescado(P).

comida(E,P,D) :- entrada(E), plato_principal(P), postre(D).


valor(E,P,D,V) :- calorias(E,X), calorias(P,Y), calorias(D,Z), V is X+Y+Z.

comidaYCalorias(E,P,D,V) :- comida(E,P,D), valor(E,P,D,V).

comidaEquilibrada(E,P,D,V) :- comidaYCalorias(E,P,D,V), V=<800.

