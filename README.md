# COVID19-MEST
Datasets con información relacionada con el coronavirus.


## Desempleo por municipios (SEPE Abril 2020)
```
data_unemployement <- read.csv("https://raw.githubusercontent.com/edugzlez/covid19-mest/master/data_unemployement.csv")
```
#### Columnas
* **cp**: código municipal compuesto por CPRO	CMUN según https://www.ine.es/daco/daco42/codmun/codmunmapa.htm
* **prov**: nombre de la provincia.
* **location**: nombre del municipio.
* **unemployement**: desempleo total registrado.
* **men_s24**: hombres desempleados con edad inferior a 24 años.
* **men_b24_44**: hombres desempleados con edades entre 24 y 44 años.
* **men_h44**: hombres desempleados con una edad superior a 44 años.
* **women_s24**: mujeres desempleadas con edad inferior a 24 años.
* **women_b24_44**: mujeres desempleadas con edades entre 24 y 44 años.
* **women_h44**: mujeres desempleadas con una edad superior a 44 años.
* **agriculture**: desempleados cuyo último trabajo fue en la agricultura.
* **industry**: desempleados cuyo último trabajo fue en la industria.
* **construction**: desempleados cuyo último trabajo fue en la construcción.
* **services**: desempleados cuyo último trabajo fue en el sector servicios.
* **previously_unemployed**: desempleados cuyo sin trabajo previo.
