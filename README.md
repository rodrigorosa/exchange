# [an-exchange](http://an-exchange.herokuapp.com/)

![ruby](https://img.shields.io/badge/Ruby-2.3.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[ ![Codeship Status for rodrigorosa/exchange](https://app.codeship.com/projects/897afb70-124d-0135-4579-0eeb1db01106/status?branch=master)](https://app.codeship.com/projects/217012)

## About

Deadly simple web app to perform currency conversions.

![an-exchange](https://raw.githubusercontent.com/rodrigorosa/exchange/master/public/screenshot.png)

## Dependencies
```
  * Fixer.io
```

# Getting Started

```
docker-compose build
docker-compose run --rm website rails db:create db:migrate
  * docker-compose up
```
