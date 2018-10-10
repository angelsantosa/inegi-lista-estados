# inegi-lista-estados

Lista en JSON de estados, municipios, regiones, colonias y códigos postales de todo México.

Compilación creada sin fines de lucro, sugiero fuertemente filtrar solo los datos que se necesitan para un json final, pueden usar [JSPath](http://www.jsonquerytool.com/#/JSPath) o similares.

Dona una chela aca http://paypal.me/angelsantosa

# Documentación

Las ids y 'namings' son oficiales de INEGI Facil, ninguno fue alterado.

## Carpeta `/cities/`

Contiente 32 **archivos JSON**, (1-32 a cada estado respectivamente), el primer dato en la lista conforma datos del estado y consecutivamente los datos sus municipios

Ejemplo:
```json
[
    {
        "id": "1",
        "clave_entidad": "1",
        "nombre_entidad": "Aguascalientes",
        "clave_municipio": "0",
        "nombre_municipio": "todo el estado",
        "clave_inegi": "01000",
        "nombre_inegi": "",
        "minx": "-102.858",
        "miny": "21.6225",
        "maxx": "-101.867",
        "maxy": "22.4456",
        "lat": "22.034027099609375",
        "lng": "-102.36222457885742"
    },
    {
        "id": "70",
        "clave_entidad": "1",
        "nombre_entidad": "Aguascalientes",
        "clave_municipio": "7",
        "nombre_municipio": "Rincon de Romos",
        "clave_inegi": "01007",
        "nombre_inegi": "",
        "minx": "-102.432",
        "miny": "22.1256",
        "maxx": "-102.2",
        "maxy": "22.3742",
        "lat": "22.24986076354981",
        "lng": "-102.31583023071288"
    }
]
```
## Carpeta `/codes/`

Contiene 32 **carpetas** (1-32 a cada estado respectivamente), cada carpeta contiene _**n**_ numero de archivos que corresponden a los municipios de dicho estado, en los cuales se lista las _colonias*_ y mas datos.


_* Yo las llamo colonias, en todos los archivos las referencian como asentamientos de tipo Colonia_

Ejemplo:
```json
[
    {
        "id": "2897",
        "codigo_postal_asentamiento": "20460",
        "nombre_asentamiento": "Cosío Centro",
        "tipo_asentamiento": "Colonia",
        "nombre_municipio": "Cosío",
        "nombre_estado": "Aguascalientes",
        "nombre_ciudad": "Cosío",
        "codigo_postal_oficina": "20401",
        "clave_estado": "1",
        "codigo_postal_oficina_": "20401",
        "c_cp_vacio": "",
        "clave_tipo_asentamiento": "09",
        "clave_municipio": "4",
        "identificador_asentamiento": "0570",
        "zona_asentamiento": "Semiurbano",
        "clave_interna_cp_ciudad": "09"
    }
]
```
## Carpeta `/towns/`

Contiene 32 **carpetas** (1-32 a cada estado respectivamente), cada carpeta contiene _**n**_ numero de archivos que corresponden a los municipios de dicho estado, en los cuales se lista las _regiones*_ y mas datos.

_* Yo las llamo regiones, y no estoy muy seguro como referirme a dicha lista, town en ingles tiene significados que no tendrían sentido para las notaciones de estados en México_

Ejemplo:
```json
[
    {
        "id": "117907",
        "estado_id": "14",
        "municipio_clave": "5",
        "municipio_id": "536",
        "clave": "0001",
        "nombre": "Amatitán",
        "latitud": "205006",
        "longitud": "1034348",
        "altitud": "1248"
    }
]
```

## Archivo `states.json`

Esta es una compilación de las primeras entradas de los archivos que estan en la carpeta /cities/, lista solo los estados con las ids correspondientes.

Ejemplo:
```json
[    
    {
        "id": "3",
        "clave_entidad": "3",
        "nombre_entidad": "Baja California Sur",
        "clave_municipio": "0",
        "nombre_municipio": "todo el estado",
        "clave_inegi": "03000",
        "nombre_inegi": "",
        "minx": "-115.17",
        "miny": "22.8733",
        "maxx": "-109.425",
        "maxy": "27.9983",
        "lat": "25.435832977294922",
        "lng": "-112.29750061035156"
    }
]
```
## Archivo `script.sh`

Script sencillo y nada optimizado con el cual se obtuvo la información

# Fuente

**Estos datos fuero extraídos desde la pagina del INEGI Facil, desde las siguientes 'APIS'**

http://inegifacil.com/dropdowns - Mexican Dropdown Maker

## Municipios
`http://inegifacil.com/cities/id_estado/`

_Donde `id_estado` es un numero del 1 al 32_

## Colonias (con codigo postal)
`http://inegifacil.com/cities/id_estado/id_municipio/`

_Donde `id_estado` es un numero del 1 al 32 y `id_municipio` es un numero en rango respectivo al estado en cuestión_

## 'Regiones'
`http://inegifacil.com/towns/id_estado/id_municipio/`

_Donde `id_estado` es un numero del 1 al 32 y `id_municipio` es un numero en rango respectivo al estado en cuestión_