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

