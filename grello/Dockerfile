FROM python:2.7
# clone application
COPY git-repo /opt/project
WORKDIR /opt/project

# install application
RUN pip install -r requirements.txt

EXPOSE 5000
ENV FLASK_APP=server.py 

ENTRYPOINT sleep 2 && flask run --host=0.0.0.0
    
