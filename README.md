# gtfs-server


## How to update

Go to `https://data.nantesmetropole.fr/explore/dataset/244400404_tan-arrets-horaires-circuits/export/`

Download `GTFS-TAN.zip`

```
$> mv GTFS-TAN.zip data/nantes/ARRETS_HORAIRES_CIRCUITS_TAN_2018_2019_gtfs.zip
```

Push new version and wait for build and deploy on server

```
docker run -p 80:8080 -p 443:8081 -d --restart always  gcr.io/k8s-aksels/github-takaapp-gtfs-server:vX.X
```