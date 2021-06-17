#   Task 5
****
##  Task5A
### Sakila schema and data files are already inside the folder '/Masterclass_Trainee/Task5'

### Run the SQL scripts to create a database and insert rows
-   `cd` to the folder you've copied the schema and insert-data SQL files
-   Start the Postgres container using the `docker run` command
-   You will need to specify:
--- Container name `--name`
--- Port to open `-p`
--- Shared file system volume `-v /var/lib/postgresql/data`
--- Image to use
--- Put together: 
`docker run --rm --name [CONTAINER_NAME] -d -p 54320:5432 -v /var/lib/postgresql/data postgres`
    - (would recieve container not found in next step, and `docker ps -a` is empty. Fixed by including password option. `docker run --rm --name my_postgres -v /var/lib/postgresql/data -e POSTGRES_PASSWORD=password -d -p 54320:5432 postgres)
`

-   Create a database in the container
--- Execute the Docker container using the command `docker exec`
--- Add in the psql flag when executing
--- Put together:
`docker exec -it [CONTAINER_NAME] psql -U postgres`
--- Once in psql, create a database, exit psql
    ```    
    docker exec -it [CONTAINER_NAME] psql -U postgres
    postgres=# CREATE DATABASE db
    postgres=# quit
    ```

-   Copy the Sakila schema and insert-data SQL files into the container using the command `docker cp`
---   For schema.sql: `docker cp ./postgres-sakila-schema.sql [CONTAINER_NAME]:/postgres-sakila-schema.sql` <br />
---   Repeat for data.sql
-   Execute the SQL files in the container. Execute the schema first then populate with data.
---   For schema.sql: `docker exec -it [CONTAINER_NAME] psql -U postgres -a db -f /postgres-sakila-schema.sql` <br />
---   Repeat for data.sql

****
##  Task 5B
### Provide a code segment in Python to query database
Using the database created in Task 5A, provide a code segment in Python to :
1. Combine the tables **actor**, **film_actor**, and **film**
2. Query the first 10 rows of **ACTOR_ID, FIRST_NAME, LAST_NAME, FILM_ID, TITLE, DESCRIPTION** and **RELEASE_YEAR**

-   Create a Python file and open in a code editor
-   In your script, you will need to:
--- Import psycopg2 module. Psycopg2 is a PostgreSQL database adapter for Python
--- Connect to the database in the container
--- Use SQL features to combine tables using INNER JOIN, and SELECT columns
--- Print SQL query results


-   Save the file. `cd` to folder containing script
-   Run the script in Terminal
    `python [FILE_NAME].py`

****
##  Annex
### Pulling the Sakila image from Github
### 1. Pull the Postgres image from DockerHub
-   Go to the [Postgres DockerHub page](https://hub.docker.com/_/postgres)
-   You can use the command `docker pull` to pull the image into your local machine

### 2. Clone the DB scripts from GitHub
-   Go to the [Sakila Database](https://github.com/jOOQ/jOOQ/tree/master/jOOQ-examples/Sakila/postgres-sakila-db) on GitHub
-   Clone the jOOQ repo onto local machine
-   Extract out the Sakila DB from local repository. Navigate to Sakila postgres folder and copy schema and data-insert into a separate folder. The SQL files are located in ~\jOOQ\jOOQ-examples\Sakila\postgres-sakila-db
