FROM python:3

RUN apt update && apt install sudo
    pip install django==3.2\
    

COPY . . 

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

