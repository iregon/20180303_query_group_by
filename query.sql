/*
Per ogni diversa materia determinare il numero di valutazioni visualizzando l'elenco delle materie, 
ordinate alfabeticamente, con il corrispondente valore calcolato
*/
SELECT materia, COUNT(*) AS nValutazioni
FROM valutazioni
GROUP BY (materia)
ORDER BY materia