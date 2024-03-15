FROM jupyter/pyspark-notebook:python-3.8
 
USER root
 
RUN apt update
RUN apt update && apt install build-essential software-properties-common -y
RUN apt install python3-dev -y
RUN apt install curl -y
RUN pip install findspark \
    && SPARK_HOME=${SPARK_HOME:-$(find_spark_home.py)}
USER jovyan
RUN pip install boto3
RUN pip install spylon-kernel
RUN python -m spylon_kernel install --user