FROM rust:1.80.1

WORKDIR /app
COPY . .

RUN cargo install --path .

ENV RUST_BACKTRACE=1

CMD ["app"]
