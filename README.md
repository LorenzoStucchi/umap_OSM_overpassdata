# umap_OSM_overpassdata

Automated script for the download of OSM data with Overpass API to be used in uMap.

## List of maps

* Pietre d'inciampo in Italia: http://u.osmfr.org/m/411694/
* Ecomusei in Italia: http://u.osmfr.org/m/472294/
* Accessibility: https://umap.openstreetmap.fr/it/map/accessibility_589291

## Overpass query

### Wheelchair

```
[out:json][timeout:300];
area(3600044915)->.searchArea;
(node["wheelchair"](area.searchArea);
way["wheelchair"](area.searchArea););
out meta center;
```
