CT Hiking Trails Import From DEEP
==============

## Source
Data are from [CT DEEP](http://www.ct.gov/deep/cwp/view.asp?a=2698&q=322898&deepNav_GID=1707%20#OutdoorRecreation).
You can download the original [.shp file](ftp://ftp.state.ct.us/pub/dep/gis/shapefile_format_zip/Statewide_Trails_shp.zip) (use Trail.shp) and view [metadata](http://www.cteco.uconn.edu/metadata/dep/document/TRAIL_FGDC_Plus.htm).

## Import
Data would be imported manually using JOSM. Existing roads and paths would be modified to higher accuracy of the DEEP data. (In case the existing data in OSM will be found very inaccurate, whole segments might be replaced with DEEP data.) 


## Data processing
+ .shp file was converted to .osm file using JOSM
+ Tag values were modified using [sed script](https://github.com/Mashin6/CThikingtrails/blob/master/convert_script.sh)

*Conversion of tags:*

    OBJECTID        removed
    TRAILSYSID      removed
    TRAILNAME       changed to  name= + highway=path
    ROADNAME        changed to  name= + highway=road
    TRAILCLASS
    TRAILSURF
    TRAILSTAT
    PUBACCESS
    HIKE
    WALK
    RUN
    INLINSKATE
    BIKE
    MTNBIKE
    MOTORBIKE
    ALLTERVEH
    SNOWMOBILE
    CROSSCSKI
    EQUESTRIAN
    ADAACCESS
    DOGLEASH
    DOGUNLEASH
    NATURTRAIL
    TIMEPERIOD
    HORIZACCUR
    SPECIALPERMIT
    TRAILCOMMENTS
    TRAILMARK
    SHAPE          removed
    SHAPE.len      removed
 

## Accuracy
According to the 'HORIZACCUR' tag associated with each trail, the accuray varies depending on GPS device used from 1m to 10m.

+ The most of used is profesional Trimble ProXR with 1-8m accuracy. ~11978
+ Garmin GPSMAP 76CSx @ 33ft accuracy. ~316
+ few with unknown accuracy


## Licence
Licence is stated as Public Domain with requirement of attribution. 

After import, CT DEEP will be added to [wiki Contributors page](http://wiki.openstreetmap.org/wiki/Contributors).

"Access constraints: None. The data is in the public domain and may be redistributed. 
Use constraints: No restrictions or legal prerequisites for using the data. ......  Once the data is distributed to the user, modifications made to the data by the user should be noted in the metadata. The State of Connecticut, Department of Energy and Environmental Protection and all other Originators (referenced in the Citation section of this metadata), should be acknowledged as the data source in products derived from the trail data. For example, include the following data source description on a map: Trails - From the Connecticut Statewide Trails layer, compiled and published by CT DEEP and other trail data collecting agencies and organizations."









