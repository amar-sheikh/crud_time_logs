# Time Logger Live Interview

The time logger is a simple application that can be used for tracking and logging hours for client billing.

Time Logs are setup with a duration (in hours) and description and can be in a pending or billed state.

## Setup

A rails 6 app is setup in the web directory. The system is configured with rspec and capybara

### Docker Setup

- Run docker-compose up
- exec into the ruby container with docker-compose exec ruby bash
- run `make`

### Local Setup

- Ensure you have the correct system dependencies
- Go into the web directory and run `make`

## Tasks

We'll be covering these tasks over the course of an hour, we'll start one by one and sequentially. No worries if we don't get all of the tasks done, they aren't all required.

- [ ] Add ability to create a new time log from the rails web interface
- [ ] Add ability to edit a time log's duration or description
- [ ] Add ability to view time logs by pending, billed, or all time logs
- [ ] Add ability to mark a time log as billed from time logs list view
- [ ] Add ability to change the duration of a time log from the time logs list view without reloading the page
