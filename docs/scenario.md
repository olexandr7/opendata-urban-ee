# Scenario
Keit is a a fresh PhD graduate from the University of Tartu, relocating to Narva as he's been offered a Lecturer position at Narva Colledge. Keit is fed up with renting and wishes to aquire personal property via applying for a home loan. Keit would be using Kredex guarantee, so he's looking for a house with high energoefficiency rating. Since the initial deposit would take up a substantial share of savings and is a major future investment, Keit would like to settle in a city district with minimal rate of recent crimes against property. 

## Idea
Map-based vizualization of energoefficient houses locations combined with crimes against property. 

# Datasets 

|Source|Storage|Temporality| 
|---|---|---|
|[Ehitisregister](https://avaandmed.ehr.ee/)|[Hoone energia märgised](https://avaandmed.ehr.ee/)|1994-2019|
|[PPA/Infosüsteem POLIS](https://www.politsei.ee/et/avaandmed)|[Varavastased süüteod](https://opendata.smit.ee/ppa/csv/vara_1.csv)|2018-2019|

Extracted datasets (.csv) are also available in [Github](https://github.com/olexandr7/opendata-urban-ee/tree/master/demo%20scenario/original%20datasets)


## Primary columns

|Dataset|Column name|Column type| 
|---|---|---|
|Varavastased süüteod|ValdLinnNimetus|string|
|Varavastased süüteod|KohtLiik|string| 
|Varavastased süüteod|Kahjusumma|number| 
|Varavastased süüteod|Lat-EPSG:3301|coordinates| 
|Varavastased süüteod|Lon-EPSG:3301|coordinates| 
|Hoone energia märgised|taisaadress|string| 
|Hoone energia märgised|hoone_tyyp|string| 
|Hoone energia märgised|energia_klass|string| 

# Vizualization

<iframe  src="https://olcher.shinyapps.io/NarvaOpenData/" frameborder="0" width = "600px" height = "300px"></iframe>


Alternative map link: [NarvaOpenData app](https://olcher.shinyapps.io/NarvaOpenData/)

Transformed datasets (.csv) are also available in [Github](https://github.com/olexandr7/opendata-urban-ee/tree/master/demo%20scenario/transfromed%20datasets)

## Insights 

+ Only 4 apartment buildings (hoone_tyyp == "Korterelamud") in Narva have energoefficiency class assigned
+ Out of those 4, highest class is "C"
+ Energoefficient houses closer to the river seem like a safer place in terms of 'Varavastased süüteod'
