FROM jupyter/scipy-notebook:latest

COPY start.sh /home/jovyan/start.sh
COPY requirements.txt .
COPY ./notebooks /home/jovyan/work/notebooks

USER root
RUN chmod +x /home/jovyan/start.sh
USER jovyan

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

WORKDIR /home/jovyan/work

EXPOSE 8888
EXPOSE 5000

CMD ["/home/jovyan/start.sh"]
