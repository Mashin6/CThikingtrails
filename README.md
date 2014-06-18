CT Hiking Trails Import From DEEP
==============

## Source
Data are from [CT DEEP](http://www.ct.gov/deep/cwp/view.asp?a=2698&q=322898&deepNav_GID=1707%20#OutdoorRecreation).
You can download the original [.shp file](ftp://ftp.state.ct.us/pub/dep/gis/shapefile_format_zip/Statewide_Trails_shp.zip) (use Trail.shp) and view [metadata](http://www.cteco.uconn.edu/metadata/dep/document/TRAIL_FGDC_Plus.htm).

Converted .osm file (see Data processing) can be downloaded from [here](https://www.dropbox.com/s/gakjmu67px1k5ou/CT-DEEP_converted.osm)

## Import
Data will be imported manually using JOSM. New roads/paths will be connected to existing paths. Existing roads and paths would be modified to higher accuracy of the DEEP data. (In case the existing data in OSM will be found very inaccurate, whole segments might be replaced with DEEP data.)

### Trail relations
During import process, paths and roads with same name and deep:trailmark tags will be grouped into hiking route relations accroding to [tagging scheme](http://wiki.openstreetmap.org/wiki/WikiProject_United_States_Long_Distance_Trails#Tagging).
Name and deep:trailmark tags will be transferred from paths to relations.
Color info from deep:trail mark will be used to create color= tag.
deep:reviewed=no will be added to each relation. (Upon on-site survey and adding valid osmc:symbol tag, deep:reviewed tag can be removed).

### Known Issues
+ Some of the paths have access=no even though they are marked as hiking trails. Possible error in DEEP data? => need to be investigated on-site
+ DEEP data provide color or combinations of colors used to blaze the trail, but do not provide information about shape of the blaze. => hiking route relations will have to be later verified by on-site survey.


## Data processing
+ .shp file was converted to .osm file using JOSM
+ Tag values were modified using [sed script](https://github.com/Mashin6/CThikingtrails/blob/master/convert_script.sh)
+ For ways, which have "highway=road/path" and "highway=steps" tags, keep only "highway=steps" using [awk script](https://github.com/Mashin6/CThikingtrails/blob/master/convert_script.sh)

*Conversion of tags (see original metadata):*

    OBJECTID                    removed
    TRAILSYSID                  removed
    TRAILNAME                   changed to  name= + highway=path
    ROADNAME                    changed to  name= + highway=road
    TRAILCLASS                  removed
    TRAILSURF                   changed to surface=
        Soil                changed to earth
        Paved               changed to paved
        Paved Road          changed to paved
        Unpaved             changed to unpaved
        Stone               changed to pebblestone
        Bordwalk            changed to wood
        Stone Dust          changed to fine_gravel
        Gravel              changed to gravel
        Concrete            changed to concrete
        Asphalt             changed to asphalt
        Crushed Aggregate   changed to fine_gravel
        Bituminous          changed to asphalt
        Stairs              changed to higway=steps
        Timber Plan         changed to wood
        Aggregate           changed to fine_gravel
        
    TRAILSTAT                   removed
    PUBACCESS=true/false        changed to access=yes/no
    HIKE=true/false             changed to foot=yes/no       
    WALK                        changed to foot=yes/no    
    RUN                         changed to foot=yes/no    
    INLINSKATE=true/false       changed to inline_skates=yes/no
    BIKE=true/false             changed to bicycle=yes/no
    MTNBIKE=true/false          changed to mtb:access=yes/no
    MOTORBIKE=true/false        changed to motorcycle=yes/no
    ALLTERVEH=true/false        changed to atv=yes/no
    SNOWMOBILE=true/false       changed to snowmobile=yes/no
    CROSSCSKI=true/false        changed to ski:nordic=yes/ false removed
    EQUESTRIAN=true/false       changed to horse=yes/no
    ADAACCESS=true/false        changed to wheelchair=yes/no
    DOGLEASH=true/false         changed to dog=leashed/no
    DOGUNLEASH                  removed (no True value)
    NATURTRAIL=true/false       changed to education=yes/ false removed
    TIMEPERIOD                  removed
    HORIZACCUR                  removed
    TRAILMARK                   changed to deep:trailmark
    SHAPE                       removed
    SHAPE.len                   removed
 

## Accuracy
According to the 'HORIZACCUR' tag associated with each trail, the accuray varies depending on GPS device used from 1m to 10m.

+ The most of used is profesional Trimble ProXR with 1-8m accuracy. ~11978
+ Garmin GPSMAP 76CSx @ 33ft accuracy. ~316
+ few with unknown accuracy


## Licence
Licence is stated as Public Domain with requirement of attribution. 

All changestes will have "source=CT DEEP" tag. After import, CT DEEP will be added to [wiki Contributors page](http://wiki.openstreetmap.org/wiki/Contributors).

"Access constraints: None. The data is in the public domain and may be redistributed. 
Use constraints: No restrictions or legal prerequisites for using the data. ......  Once the data is distributed to the user, modifications made to the data by the user should be noted in the metadata. The State of Connecticut, Department of Energy and Environmental Protection and all other Originators (referenced in the Citation section of this metadata), should be acknowledged as the data source in products derived from the trail data. For example, include the following data source description on a map: Trails - From the Connecticut Statewide Trails layer, compiled and published by CT DEEP and other trail data collecting agencies and organizations."









