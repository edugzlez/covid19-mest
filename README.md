# COVID19-MEST
Datasets con información relacionada con el coronavirus.

##### Table of Contents  
[Población (2019) y superficie por municipios](#popext)  
[Relación zonas de salud y códigos ine municipios en Castilla y León](#data_zs_ine)  
[Población (2019) de municipios de CyL por grupos quinquenales y sexo](#data_popcyl)  
[Desempleo por municipios (SEPE Abril 2020)](#data_unemployement)  


<a name="popext"/>
## Población (2019) y superficie por municipios
```
data_popext <- read.csv("https://raw.githubusercontent.com/edugzlez/covid19-mest/master/data_population_extension_spain.csv")
```

#### Fuente
Es una mezcla del <a href="https://ssweb.seap.minhap.es/REL/frontend/inicio/municipios/all/all">Registro de Entidades Locales</a> y los <a href="https://www.ine.es/daco/daco42/codmun/codmunmapa.htm">códigos ine</a> municipales. Para el municipio Tharsis de Huelva no hay código INE (desconozco el motivo).

#### Columnas
* **CODAUT**: código INE de la comunidad autónoma.
* **CPROV**: código INE de la provincia.
* **CMUN**: código del municipio. (la concatenación de CPROV y CMUN sería el código INE del muncipio)
* **NOMBRE**.
* **SUPERFICIE**.
* **HABITANTES**.

<a name="data_zs_ine"/>
## Relación zonas de salud y códigos ine municipios en Castilla y León
```
data_zs_ine <- read.csv("https://raw.githubusercontent.com/edugzlez/covid19-mest/master/zonas_salud_codigos_ine.csv")
```

#### Fuente
Es una mezcla dataset anterior y los datos de las <a href="https://analisis.datosabiertos.jcyl.es/explore/dataset/tasa-enfermos-acumulados-por-areas-de-salud/table/?disjunctive.zbs_geo">zonas de salud de la Junta de Castilla y León</a>. Se han enlazado ambas tablas a partir del nombre del municipio (para compararlos se les ha realizado varias transformaciones pues no eran exactamente iguales salvo cambios menores; algunos nombres de pueblos estaban anticuados en los datos de CyL)

Es importante tener esta relación para asociar datos del INE, o cualquier otra fuente, por zonas de salud.

#### Columnas
* **cs**: código del centro de salud.
* **municipio**: nombre de un municipio que está asociado a ese centro de salud.
* **codine**: código ine del municipio.
* **codprov**: código de provincia.
* **codmun**.

<a name="data_popcyl"/>
## Población (2019) de municipios de CyL por grupos quinquenales y sexo
```
data_popcyl <- read.csv("https://raw.githubusercontent.com/edugzlez/covid19-mest/master/data_population_cyl.csv")
```

#### Fuente
Provienen de los datos del <a href="https://ine.es/dynt3/inebase/es/index.htm?padre=517&capsel=525">Padrón Municipal</a> que publique el INE anualmente.

#### Columnas
* **codine**: código INE.
* **codprov**.
* **codmun**.
* **prov**: nombre de provincia.
* **municipio**: nombre de municipio.
* El resto de datos se refieren a la población por edad y sexo. El propio nombre de la columna es descriptivo.


<a name="data_unemployement"/>
## Desempleo por municipios (SEPE Abril 2020)
```
data_unemployement <- read.csv("https://raw.githubusercontent.com/edugzlez/covid19-mest/master/data_unemployement.csv")
```
#### Columnas
* **codine**: código municipal compuesto por CPROV	CMUN según https://www.ine.es/daco/daco42/codmun/codmunmapa.htm
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



