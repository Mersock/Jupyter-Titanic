FROM continuumio/miniconda3:master

WORKDIR /project

RUN conda install \
    xarray \ 
    netCDF4 \ 
    bottleneck \
    numpy \
    pandas \
    matplotlib \
    jupyterlab
    
COPY ./README.md .
COPY ./data ./data
COPY ./notebooks ./notebooks

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]