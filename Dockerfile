FROM jupyter/scipy-notebook:latest

# Install additional ML libraries for classification and regression
RUN pip install --no-cache-dir \
    scikit-learn \
    pandas \
    matplotlib \
    seaborn \
    joblib \
    xgboost \
    lightgbm \
    catboost \
    kagglehub

# Set working directory
WORKDIR /home/jovyan/work

# (Optional) Expose Jupyter port
EXPOSE 8888

USER root
RUN chown -R jovyan:users /home/jovyan/work
USER jovyan

