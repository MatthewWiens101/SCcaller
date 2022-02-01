from conda/miniconda2

RUN conda update --all && conda install -c bioconda samtools && conda clean -afy

RUN mkdir -p /workspace
WORKDIR /workspace
ADD . /workspace

RUN pip install -r /workspace/requirements.txt

ENTRYPOINT [ "python2", "/workspace/sccaller_v2.0.0.py" ]
