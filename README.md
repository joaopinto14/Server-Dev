# Server-Dev

Everything you need to set up a development web server on your desktop.


## Functionalities:

- [x] Web Server {nginx}
- [x] Php {php, composer, nodejs}
- [x] Database {mariadb}
- [x] PhpMyAdmin
- [x] Redis Server


## Requirements:

- Docker 

## Setup

1. Download the latest stable release [here](https://github.com/joaopinto14/Server-Dev/releases/latest)


2. Extract the downloaded file:

    ``` 
    unzip Server-Dev-Stable.zip
    ```
    OR
    ``` 
    tar -xf Server-Dev-Stable.tar.gz
    ```

3. Enter into the Server-Dev folder:

    ```
    cd Server-Dev-Stable
    ```

4. Copy the .env.example file to a .env file:

    ``` 
    cp .env.example .env
    ```
    Make the adjustments you need, to match your needs.
    
    Info: PHP_USER variable is to insert the user name which will edit the files created inside the containers

5. Configure Virtual Host

    Place the virtual host configuration files in the templates folder located in the web directory

    Put the files with the following name:

        {name}.conf.template

6. Placement of web projects

    The placement of projects is in the www folder located in the web directory

7. Start the containers

    ```
    docker-compose up -d
    ```
    

## Execution of Commands

- Composer

    ```
    docker-compose exec -w /project/path/inside/container php composer {install;update;...}
    ```
- NodeJS

    ```
    docker-compose exec -w /project/path/inside/container php npm {install;run dev;...}
    ```
    ```
    docker-compose exec -w /project/path/inside/container php npx {install;update;...}
    ```

- Others

    ```
    docker-compose exec -w /project/path/inside/container {container} {command}
    ```

## Useful Sources

- [Nginx](https://www.nginx.com/)

- [Nginx-Docker](https://hub.docker.com/_/nginx)

- [PHP](https://www.php.net/)

- [PHP-Docker](https://hub.docker.com/_/php)

- [Composer](https://getcomposer.org/)

- [NodeJS](https://nodejs.org/)

- [MariaDB](https://mariadb.org/)

- [MariaDB-Docker](https://hub.docker.com/_/mariadb)

- [PhpMyAdmin](https://www.phpmyadmin.net/)

- [PhpMyAdmin-Docker](https://hub.docker.com/_/phpmyadmin)

- [Redis](https://redis.io/)

- [Redis-Docker](https://hub.docker.com/_/redis)