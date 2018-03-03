/*
Per ogni diversa materia determinare il numero di valutazioni visualizzando l'elenco delle materie, 
ordinate alfabeticamente, con il corrispondente valore calcolato
*/
SELECT materia, COUNT(*) AS nValutazioni
FROM valutazioni
GROUP BY (materia)
ORDER BY materia

/*
Per ogni diversa materia calcola la media dei voti visualizzando in ordine decrescente l'elenco
delle materie con il corrispondente valore calcolato
*/
SELECT materia, avg(voto) as mediaVoti
FROM valutazioni
GROUP BY (materia)
ORDER BY AVG(voto) DESC

/*
Per ogni professore calcolare il numero totale di ore di insegnamento, visualizzando l'elenco
dei nominativi con i corrispondenti valori calcolati
*/
SELECT p.codiceProfessore, p.cognome, p.nome, SUM(i.numeroOre)
FROM professori p,insegnano i
WHERE p.codiceProfessore = i.codiceProfessore
GROUP BY (p.codiceProfessore)

SELECT p.codiceProfessore, p.cognome, p.nome, SUM(i.numeroOre)
FROM professori p,insegnano i
WHERE p.codiceProfessore = i.codiceProfessore
GROUP BY p.codiceProfessore, p.cognome, p.nome