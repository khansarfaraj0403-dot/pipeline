#pulling base image
FROM python:3.14-slim
#install required dipendecy
RUN pip install streamlit
#set working directory
WORKDIR /var
#copy file from our machine to docker image
COPY etl.py .
#exposing the internal port
EXPOSE 8501
#executing the program file
CMD ["streamlit","run","etl.py"]

