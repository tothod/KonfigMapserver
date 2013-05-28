SELECT 
	knkod,COUNT(knkod) AS NumOccurrences
FROM
	public.city
WHERE
	"finnsiosm"=false
GROUP BY 
	knkod
ORDER BY
	knkod