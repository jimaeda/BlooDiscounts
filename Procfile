web: bundle exec rails server -p $PORT -e $RAILS_ENV
release: bundle exec rake db:drop
release: bundle exec rake db:setup
release: bundle exec rake db:migrate
