/*
Query per visualizzare la classifica del campionato
*/
SELECT nome AS NomeSquadra,punti AS PuntiTotali
FROM squadra
ORDER BY punti DESC;

/*
Query per visualizzare la rosa che ha vinto il torneo
*/
SELECT G.ID, G.nome, G.ruolo, G.data_nascita, G.nazionalita
FROM giocatore G
JOIN squadra S ON G.ID_squadra = S.ID
WHERE S.punti = (
SELECT MAX(punti)
FROM squadra
);

/*
Query per visualizzare l’allenatore della squadra vincente
*/
SELECT A.ID, A.nominativo, A.data_nascita, A.nazionalita
FROM allenatore A
JOIN squadra S ON A.ID = S.ID_allenatore
WHERE S.punti = (
SELECT MAX(punti)
FROM squadra
);

/*
Query per visualizzare tutte le partite giocate da squadra
*/
SELECT P.ID, C.nome AS squadra_casa, T.nome AS squadra_trasferta, P.gol_casa,
P.gol_trasferta, P.data, P.ID_stadio, P.ID_arbitro
FROM Partita P
JOIN Squadra C ON P.ID_casa = C.ID
JOIN Squadra T ON P.ID_trasferta = T.ID
WHERE C.ID = <ID_squadra> OR T.ID = <ID_squadra>;

/*
Query per visualizzare le squadre con più gol fatti in casa
*/
SELECT S.nome AS NomeSquadra, SUM(P.gol_casa) AS gol_fatti_in_casa
FROM squadra S
JOIN partita P ON S.ID = P.ID_casa
GROUP BY S.nome
ORDER BY gol_fatti_in_casa DESC;

/*
Query per visualizzare le squadre con più gol in trasferta 
*/
SELECT S.nome AS NomeSquadra, SUM(P.gol_trasferta) AS gol_fatti_fuori_casa
FROM squadra S
JOIN partita P ON S.ID = P.ID_trasferta
GROUP BY S.nome
ORDER BY gol_fatti_fuori_casa DESC;

/*
Query per visualizzare le squadre con più gol in totale
*/
SELECT squadra.nome, sum(gol) AS gol_totali
FROM (
SELECT id_casa AS id_squadra, gol_casa AS gol
FROM partita
UNION ALL
SELECT id_trasferta, gol_trasferta
FROM partita
) AS gol
JOIN squadra ON squadra.id = gol.id_squadra
GROUP BY squadra.id, squadra.nome
ORDER BY gol_totali DESC;