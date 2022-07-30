# README

Ruby Version: 3.1.2
Rails: 7.0.2
Database: Postgresql


# Start Docker
Make sure you are in the root directory
```
docker-compose build
docker-compose up -d
```

# Check logs
`docker-compose logs -f --tail=100 web`

# Run a console
`docker-compose exec web rails c`

# Run rake tasks
`docker-compose exec web bundle exec rake db:migrate`

# Run Rspec
`docker-compose exec web bundle exec rspec`

# Bundle install
```
docker-compose stop
docker-compose build
docker-compose up -d
```