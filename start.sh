#!/bin/bash

mlflow ui --host 0.0.0.0 --port 5000 &

jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root

