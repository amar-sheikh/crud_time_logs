.PHONY: setup

setup:
	bundle install
	yarn install
	bundle exec rails webpacker:install
	bundle exec rails db:setup && bundle exec rspec
	nvm use 16.14.1
	
