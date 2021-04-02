#!/bin/bash

cd data
wget -O pietre.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22memorial%22%3D%22stolperstein%22%5D%28area%2EsearchArea%29%3Bnode%5B%22memorial%3Atype%22%3D%22stolperstein%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%0A"
wget -O ecomusei_percorsi.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22operator%22%7E%22ecomuseo%22%5D%28area%2EsearchArea%29%3Bway%5B%22operator%22%7E%22ecomuseo%22%5D%28area%2EsearchArea%29%3Brelation%5B%22operator%22%7E%22ecomuseo%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A"
wget -O ecomusei.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22museo%22%3D%22ecomuseum%22%5D%28area%2EsearchArea%29%3Bway%5B%22museo%22%3D%22ecomuseum%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A"
wget -O ecomusei_name.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22name%22%7E%22Ecomuseo%22%5D%28area%2EsearchArea%29%3Bway%5B%22name%22%7E%22Ecomuseo%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A"

