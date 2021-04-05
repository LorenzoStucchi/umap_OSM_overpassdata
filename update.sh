#!/bin/bash

cd data
wget -O pietre.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22memorial%22%3D%22stolperstein%22%5D%28area%2EsearchArea%29%3Bnode%5B%22memorial%3Atype%22%3D%22stolperstein%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%0A"
wget -O ecomusei_percorsi.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22operator%22%7E%22ecomuseo%22%5D%28area%2EsearchArea%29%3Bway%5B%22operator%22%7E%22ecomuseo%22%5D%28area%2EsearchArea%29%3Brelation%5B%22operator%22%7E%22ecomuseo%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A"
wget -O ecomusei.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22museo%22%3D%22ecomuseum%22%5D%28area%2EsearchArea%29%3Bway%5B%22museo%22%3D%22ecomuseum%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A"
wget -O ecomusei_name.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600365331%29%2D%3E%2EsearchArea%3B%28node%5B%22name%22%7E%22Ecomuseo%22%5D%28area%2EsearchArea%29%3Bway%5B%22name%22%7E%22Ecomuseo%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A"

sleep 120

cd accessibility
wget -O flush.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600044915%29%2D%3E%2EsearchArea%3Bnode%5B%22kerb%22%3D%22flush%22%5D%28area%2EsearchArea%29%3Bout%20geom%3B%0A"
wget -O lowered.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600044915%29%2D%3E%2EsearchArea%3Bnode%5B%22kerb%22%3D%22lowered%22%5D%28area%2EsearchArea%29%3Bout%20geom%3B%0A"
wget -O raised.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600044915%29%2D%3E%2EsearchArea%3Bnode%5B%22kerb%22%3D%22raised%22%5D%28area%2EsearchArea%29%3Bout%20geom%3B%0A"

sleep 120

wget -O sidewalk.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600044915%29%2D%3E%2EsearchArea%3Bway%5B%22footway%22%3D%22sidewalk%22%5D%28area%2EsearchArea%29%3B%28%2E%5F%3B%3E%3B%29%3Bout%20geom%3B%0A"
wget -O crossing.osm "http://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3Barea%283600044915%29%2D%3E%2EsearchArea%3Bway%5B%22footway%22%3D%22crossing%22%5D%28area%2EsearchArea%29%3B%28%2E%5F%3B%3E%3B%29%3Bout%20geom%3B%0A"
