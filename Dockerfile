FROM python:3.8
WORKDIR /app
COPY ./requirements.txt  /app/requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]