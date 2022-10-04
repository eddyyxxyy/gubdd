# Funções de data e hora no SQL

SELECT CURDATE() AS 'Data Atual';

SELECT CURTIME() AS 'Hora atual';

# CURRENT_TIME() e CURRENT_DATE() tem os mesmos resultados

SELECT CURRENT_DATE() AS 'Data Atual';

SELECT CURRENT_TIME() AS 'Hora atual';

# DATE_ADD(data, intervalo) - Calcula o tempo

SELECT DATE_ADD(CURDATE(), INTERVAL 3 DAY) AS 'Data de Vencimento';

SELECT DATE_SUB(CURDATE(), INTERVAL 10 DAY) AS 'Data subtraída';

# DATEDIFF(expressão1, expressão2) - Calcula a diferença entre as datas

SELECT DATEDIFF(CURDATE(), DATE_SUB(CURDATE(), INTERVAL 10 DAY)) AS 'Diferença entre datas';

# DATE_FORMAT()
SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y') AS 'Data Formatada';

# DAYNAME()
SELECT DAYNAME(CURDATE()) AS 'Dia da semana';

# DAYOFMONTH()
SELECT DAYOFMONTH(CURDATE()) AS 'Dia do mês';

# DAYOFWEEK()
SELECT DAYOFWEEK(CURDATE()) AS 'Dia da semana';

# DAYOFYEAR()
SELECT DAYOFYEAR(CURDATE()) AS 'Dia do ano';

# FROM_DAYS()
SELECT FROM_DAYS(730500) AS 'Data baseada em dias';

# NOW()
SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora atual';

# CURRENT_TIMESTAMP()
SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora atual';