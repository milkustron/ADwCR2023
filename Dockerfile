
FROM python:3.10-slim-bullseye # odpalenie systemu 

WORKDIR /app #stworzenie katologu z aplikacja

COPY app.py .
COPY requirements.txt . #wymagane do aplikacji biblioteki

RUN pip install -r requirements.txt 

EXPOSE 5000 #port 5000 do nasluchiwania
#tu run nie dajemy, bo run tylko jak odpalamy aplikacje i ona sie konczy a to ponizej jak ta apka sobie ciagiem idzie
ENTRYPOINT ["python"]

CMD ["app.py"]

#popnizej zbudowanie i odpalenie dockera, kropka na koncu oznacza poszukaj sobie w biezacym katalogu. ten docker run odpalic w cmd
