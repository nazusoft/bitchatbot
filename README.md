### BIT CHATBOT ###

App Bit ChatBot - Pequeno robô de conversação

## Ferramentas utilizadas:

- ruby 2.5.1-slim
- sinatra
- postgres 9.5
- sinatra-activerecord
- pg-search

## Executado utilizando Docker:

- Dockerfile
- docker-compose version 3

## Execução:

```
docker-compose build

docker-compose run --rm app bundle install

docker-compose run --rm app bundle exec db:create db:migrate

docker-compose up
```
