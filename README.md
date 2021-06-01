# umap_OSM_overpassdata

Automated script for the download of OSM data with Overpass API to be used in uMap.

## List of maps

* Pietre d'inciampo in Italia: http://u.osmfr.org/m/411694/
* Ecomusei in Italia: http://u.osmfr.org/m/472294/
* Accessibility: https://umap.openstreetmap.fr/it/map/accessibility_589291

## Overpass query

### Pietre
```
[out:xml][timeout:300];
area(3600365331)->.searchArea;
(
	node["memorial"="stolperstein"](area.searchArea);
	node["memorial:type"="stolperstein"](area.searchArea);
);
out;
```

### Ecomusei_percorsi
```
[out:xml][timeout:300];
area(3600365331)->.searchArea;
(
	node["operator"~"ecomuseo"](area.searchArea);
	way["operator"~"ecomuseo"](area.searchArea);
	relation["operator"~"ecomuseo"](area.searchArea);
);
out;
>;
out skel qt;
```

### Ecomusei
```
[out:xml][timeout:300];
area(3600365331)->.searchArea;
(
	node["museo"="ecomuseum"](area.searchArea);
	way["museo"="ecomuseum"](area.searchArea);
);
out;
>;
out skel qt;
```

### Ecomusei_name
```
[out:xml][timeout:300];
area(3600365331)->.searchArea;
(
	node["name"~"Ecomuseo"](area.searchArea);
	way["name"~"Ecomuseo"](area.searchArea);
);
out;
>;
out skel qt;
```

### Flush
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
node["kerb"="flush"](area.searchArea);
out meta geom;
```

### Lowered
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
node["kerb"="lowered"](area.searchArea);
out meta geom;
```

### Raised
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
node["kerb"="raised"](area.searchArea);
out meta geom;
```

### Sidewalk
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
way["footway"="sidewalk"](area.searchArea);
out meta geom;
```

### Crossing
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
way["footway"="crossing"](area.searchArea);
out meta geom;
```

### Kerb
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
node["kerb"](area.searchArea);
out meta geom;
```

### Wheelchair
```
[out:xml][timeout:300];
area(3600044915)->.searchArea;
(node["wheelchair"][!"highway"][!"kerb"](area.searchArea);
way["wheelchair"][!"highway"][!"kerb"](area.searchArea););
out meta center;
```
