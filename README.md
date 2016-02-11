# docker-lima-aag16
---
Reproduction of results and figures for:  

Rey, S.J. (2016) “[Space-time patterns of rank concordance: Local indicators of mobility association with applications to spatial income inequality dynamics.](https://mpra.ub.uni-muenchen.de/69480/1/MPRA_paper_69480.pdf )” *Annals of the Association of American Geographers.* [DOI:10.1080/24694452.2016.1151336](http://dx.doi.org/10.1080/24694452.2016.1151336).


## Running the docker container

```
make run
```

Or, if `make` is not available

```
docker run -d -p 8888:8888 -v $(shell pwd):/home/jovyan/work sjsrey/lima
```

If you are not running on a posix operating system, then substitute the path to the current directory for `$(shell pwd)`.

Point your browser at http://0.0.0.0:8888. This will open up the jupyter dashboard where there should be three notebooks listed:

- lima_tables_fig1.ipynb
- lima_tables_fig1.ipynb
- lima_tables_fig1.ipynb

You can open these to reproduce the various figures and tables from the paper.


## Notes

### Docker ip

If you can't get the jupyter dashboard to show up, check the ip that docker has been assigned with:

     docker-machine ip

and swap that for 0.0.0.0 above.

### Package versions

You could rebuild the image on your local host with `make build`. However, this may pull down more recent versions of some of the packages used in the research project and this, in turn, may result in breakage or slight differences in the results.

Pulling the image from docker hub will ensure exact reproducibility since the package versions are those used in the original paper.


