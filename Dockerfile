FROM continuumio/anaconda3

RUN mkdir /opt/notebooks
WORKDIR /opt/notebooks
RUN conda install -y conda
RUN conda update -y anaconda
RUN conda update -y scikit-learn
RUN conda install -y bcolz
RUN conda install -y jupyter
RUN pip install opencv-python graphviz sklearn-pandas isoweek pandas_summary pathlib

VOLUME [ "/opt/notebooks" ]
EXPOSE 8888

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser --allow-root
