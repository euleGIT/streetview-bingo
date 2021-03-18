FROM python:3.9

RUN mkdir /app
COPY ./backend /app/backend
RUN mkdir /app/frontend/dist
COPY ./frontend/dist/frontend /app/frontend/dist/frontend

RUN ls -la

WORKDIR /app/

RUN pip install -r /app/backend/requirements.txt

CMD [ "python", "./backend/main.py" ]