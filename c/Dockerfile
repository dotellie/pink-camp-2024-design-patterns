FROM gcc:14.2

COPY . /app

WORKDIR /app/

RUN gcc -g1 -O0 -o app main.c

CMD ["./app"]
