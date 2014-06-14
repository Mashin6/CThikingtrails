{
	if ($0 ~ /<\/way>/) {
		if (found == 0) { print store}
		found = 0;
	}
	
	if ($0 ~ /k='highway'/) {
		store = $0;
		if ($0 ~ /<tag k='highway' v='steps'/) {
			print $0
			found = 1;
		}	
	} else {print $0}
}



