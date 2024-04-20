FROM node

LABEL maintainer='ah912425@gmail.com'

WORKDIR /code

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*


COPY . /code/

RUN npm install

EXPOSE 3000

CMD ["npm","run","dev"]