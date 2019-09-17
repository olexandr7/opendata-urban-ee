# Scenario 1 - Citizen Science
Keit is a a fresh PhD graduate from the University of Tartu, relocating to Narva as he's been offered a Lecturer position at Narva Colledge. Keit is fed up with renting and wishes to aquire personal property via applying for a home loan. Keit would be using Kredex guarantee, so he's looking for a house with high energoefficiency rating. Since the initial deposit would take up a substantial share of savings and is a major future investment, Keit would like to settle in a city district with minimal rate of recent crimes against property. 

## Workflow
Keit intends to vizualize locations of enegroefficient houses and see if there are any overlaps with zones where crimes against property were commited. In order to do the vizualizations, Keit gets preprocessed datasets from the Narva open data portal and utilizes basic visualization skills in R (open-source), obtained while attending "Empowering Urban Disruption" MOOC provided as a part of "Welcome to Narva" information package.  

# Data

|Source|Dataset|Temporality| 
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

<iframe src="https://olcher.shinyapps.io/NarvaOpenData/" frameborder="0" width = "900px" height = "400px"></iframe>

## Description 
**Blue markers** - individual locations of residential buildings in Narva that have energoefficiency rating assigned, dataset from Ehitisregister, 1994-2019

**Blue circles** - zones (center points of 500m * 500m rectangles as provided by PPA to obfuscate actual crime scenes, originally in EPSG:3301 coordinate system) where crimes against property (crime location - apartment) were commited in Narva, color intensity corresponds to number of crimes within the zone, dataset by PPA (from POLIS infosystem), 2018-2019

Alternative map link: [NarvaOpenData app](https://olcher.shinyapps.io/NarvaOpenData/)

Transformed datasets (.csv) are also available in [Github](https://github.com/olexandr7/opendata-urban-ee/tree/master/demo%20scenario/transfromed%20datasets)

Data transformation script (R) could be found in [scenario.r](https://github.com/olexandr7/opendata-urban-ee/blob/master/demo%20scenario/scenario.Rmd)

## Insights 

+ Only 4 apartment buildings (hoone_tyyp == "Korterelamud") in Narva have energoefficiency rating assigned
+ Out of those 4, highest class is "C"
+ Energoefficient houses closer to the river seem like a safer place in terms of 'Varavastased süüteod'
