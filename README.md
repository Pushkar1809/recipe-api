# Recipe API

## Tech Used
- Django
- PostgreSQL
- Docker
- Celery
- Celery Beat
- Redis (Message Broker)
- django-rest-framework
- django-celery-email
- django-celery-results

## Prerequisites
- [Docker Desktop](https://docs.docker.com/get-docker/)

## Instructions to run
1. Clone the repository
2. Create an .env file from the .env.example file
3. Create virtual environment `python3 -m venv venv`
4. Activate virtual environment `source venv/bin/activate`
5. Install requirements `pip install -r requirements.txt`
6. Run docker-compose `docker-compose up --build`

## Ports
- 8000 - Django
- 5432 - PostgreSQL
- 6379 - Redis

## Endpoints
`GET /` - Renders a swagger UI with all the endpoints