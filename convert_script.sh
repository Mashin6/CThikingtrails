/<\/way>/ i\
<tag k='deep:reviewed' v='no' \/>

/'TRAILNAME'/{
	s/TRAILNAME/name/g
	i\
	<tag k='highway' v='path' \/>
}


/'ROADNAME'/{
	s/ROADNAME/name/g
	i\
	<tag k='highway' v='road' \/>
}

/v='Stairs'/{
    s/TRAILSURF/highway/g
	s/Stairs/steps/g
}

/v='Soil \/ Stairs'/{
    s/TRAILSURF/surface/g
	s/Soil \/ Stairs/earth/g
	i\
	<tag k='highway' v='steps' \/>
}

/'TRAILSURF'/{
	s/TRAILSURF/surface/g
	s/Soil/earth/g
	s/Paved Road/paved/g
	s/Paved/paved/g
	s/Unpaved Road/unpaved/g
	s/Unpaved/unpaved/g
	s/Stone Dust/fine_gravel/g
	s/Stone/pebblestone/g
	s/Boardwalk/wood/g
	s/Gravel/gravel/g
	s/Concrete/concrete/g
	s/Asphalt/asphalt/g
	s/Crushed Aggregate/fine_gravel/g
	s/Bituminous/asphalt/g
	s/Timber Plan/wood/g
	s/Aggregate/fine_gravel/g

}

/'PUBACCESS'/{
	s/PUBACCESS/access/g
	s/False/no/g
	s/True/yes/g
}

/'ADAACCESS'/{
	s/ADAACCESS/wheelchair/g
	s/False/no/g
	s/True/yes/g
}

# All HIKE=False have WALK or RUN = True. Therefore convert everything to "yes".
/'HIKE'/{
	s/HIKE/foot/g
	s/False/yes/g
	s/True/yes/g
}
/'WALK'/d
/'RUN'/d

/'BIKE'/{
	s/BIKE/bicycle/g
	s/False/no/g
	s/True/yes/g
}

/'MTNBIKE'/{
	s/MTNBIKE/mtb:access/g
	s/False/no/g
	s/True/yes/g
}

/'EQUESTRIAN'/{
	s/EQUESTRIAN/horse/g
	s/False/no/g
	s/True/yes/g
}

/'MOTORBIKE'/{
	s/MOTORBIKE/motorcycle/g
	s/False/no/g
	s/True/yes/g
}


/'INLINSKATE'/{
	s/INLINSKATE/inline_skates/g
	s/False/no/g
	s/True/yes/g
}

/'SNOWMOBILE'/{
	s/SNOWMOBILE/snowmobile/g
	s/False/no/g
	s/True/yes/g
}

/'ALLTERVEH'/{
	s/ALLTERVEH/atv/g
	s/False/no/g
	s/True/yes/g
}

/'DOGLEASH'/{
	s/DOGLEASH/dog/g
	s/False/no/g
	s/True/leashed/g
}

s/k='CROSSCSKI' v='True'/k='ski:nordic' v='yes'/

/TRAILSTAT/d
s/TRAILMARK/deep:trailmark/g
/k='deep:trailmark' v='None'/d
/TRAILCLASS/d
s/k='NATURTRAIL' v='True'/k='education' v='yes'/g
/NATURTRAIL/d



# unused for deleting


/'TRAILSYSID'/d
/'TIMEPERIOD'/d
/'SHAPE_len'/d
/'HORIZACCUR'/d
/'CROSSCSKI'/d
/DOGUNLEASH/d
/k='EQUESTRIAN' v='Unknown'/d

