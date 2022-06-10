FROM rust:1

WORKDIR /opt/weather/data
COPY . .
RUN cargo install --path .

ENV PORT 8080
EXPOSE ${PORT}

CMD ["weather-data"]
