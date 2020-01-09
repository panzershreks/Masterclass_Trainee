#   Task 5
****
##  Task5A
### 1. Pull the Postgres imge from DockerHub
-   Go to the [Postgres DockerHub page](https://hub.docker.com/_/postgres)
-   You can use the command `docker pull` to pull the image into your local machine

### 2. Clone the DB scripts from GitHub
-   Go to the [Sakila Database](https://github.com/jOOQ/jOOQ/tree/master/jOOQ-examples/Sakila/postgres-sakila-db) on GitHub
-   Clone the jOOQ repo onto local machine
-   Extract out the Sakila DB from local repository. Navigate to Sakila postgres folder and copy schema and data-insert into a separate folder. The SQL files are located in ~\jOOQ\jOOQ-examples\Sakila\postgres-sakila-db

### 3. Run the SQL scripts to create a database and insert rows
-   `cd` to the folder you've copied the schema and indert-data SQL files
-   Start the Postgres container using the `docker run` command
-   You will need to specify:
--- Container name `--name`
--- Port to open `-p`
--- Shared file system volume `-v /var/lib/postgresql/data`
--- Image to use

-   Create a database in the container
--- Execute the Docker container using the command `docker exec`
--- Add in the psql flag when executing
--- Once in psql, create a database, exit psql

-   Copy the Sakila schema and insert-data SQL files into the container using the command `docker cp`
-   Execute the SQL files in the container. Execute the schema first then populate with data.
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
