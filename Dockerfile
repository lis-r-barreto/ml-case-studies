FROM jupyter/scipy-notebook:latest

# Install additional ML libraries for classification and regression
COPY ./notebooks /home/jovyan/work/notebooks
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Set working directory
WORKDIR /home/jovyan/work

# (Optional) Expose Jupyter port
EXPOSE 8888
