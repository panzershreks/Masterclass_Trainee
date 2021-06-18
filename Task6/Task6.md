#   Task 6
****
##  Task 6A
####    Create a HTML template for the app
##### HTML template has been provided for you under '/Task6/task_6a/templates/form.html'
####    Edit Python script app.py
-   Open the Python script and edit it for the app. You will need to:
--- Import Flask module for Python
--- Takes in the POST request under the input name you've defined in the HTML file
--- Reverses the input text and return the processed text
-   Save and exit the editor.

### Test the Flask App. Open the browser to load the app. Key in a sequence of characters and Submit. The app should return the sequence of characters in reverse.
-   In a Terminal, enter in the following command line:
    `python [APP_FILE_NAME].py`
-   The Terminal should return a series of messages:
```
        * Serving Flask app "app" (lazy loading)
         * Environment: production
           WARNING: This is a development server. Do not use it in a production deployment.
           Use a production WSGI server instead.
         * Debug mode: off
         * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

-   Open browser and enter [localhost:5000](localhost:5000)
-   Enter a string of characters in the query box (e.g Hello World!) and click on **Submir Query** or press ENTER
-   You will be directed to a page that returns the string in reverse (e.g. !dlroW olleH)
-   To send another query, click on the BACK botton of the Browser and enter in a new string
-   To exit out of the Flask App, return to the Terminal the App is running in and CTRL+C
****
##  Task 6B
### Set up a Docker container for Postgres
We will use the same container in **Task 5**

### Set up a Docker container for PostgREST
#####    If you are using the virtual machine, PostgREST has already been set up for you.

### Create roles for anonymous web requests
- When making a request, PostgREST will switch to a created role in the database to run queries. Thus, we will need to create a role in the database.
- Start the docker container and launch psql:
    `docker exec -it [CONTAINER_NAME] psql -U postgres`
- Connect to the database `db`:
    `\c db`
- Create a user **web_anon** and grant rights to it. In psql, you will need to:
--- Create a role and name it web_anon `CREATE ROLE`
--- Grant a connection to the database that you've created to web_anon `GRANT CONNECT ON DATABASE`
--- Grant the usage on the schema public to web_anon `GRANT USAGE ON SCHEMA`
--- Grant selection on all tables in the public schema to web_anon `GRANT SELECT ON ALL TABLES`

- You can create a user **authenticator** with a password and assign the same rights as web_anon:
- `\q` to quit PostgreSQL
    
### Show how the API can be queried to list the first 10 rows of a table
-   We will use Postman for our API testing. Download Postman from this [link](https://www.getpostman.com/downloads/)
-   **Postman has been downloaded into the Virtual Machine**
-   Launch the Postman setup and install Postman on your local machine
-   To query rows from the API, launch the Docker container. In a Terminal, type in the following command line:
    `docker container start [CONTAINER_NAME]`
-   Create a .conf file for PostgREST. Navigate to the folder containing **postgrest.exe** and create a new .conf file
-   Open the .conf file in a code editor. You will need to include the following the the .conf file:
--- Database URI `db-uri` which connects to the postgres database under the user **authenticator** with the password you've set. Set the port to open and specify the db to connect to. 
    `db-uri = "postgres://<user>:<password>@localhost:<port>/<database>"`
--- Set the database schema to use
    `db-schema= "<schema>"`
--- Set the anonymous role to query the database
    `db-anon-role = "web_anon"`
-   Save the .conf file and run PostgREST. In a Terminal, `cd` to the location of the .conf file and type in the following command line:
    `./postgrest.exe [FILE_NAME].conf`
The output should be:
    ```
    Listening on port 3000
    Attempting to connect to the database...
    Connection successful
    ```
-   The container is hosted on port 3000. You can open [localhost:3000](localhost:3000) in your browser
-   Launch Postman and Create a New Request.
-   Since we want to query the first 10 rows of a table, use `GET`  under `Enter Request URL`

****
#   Annex
## Downloading PostgREST on your own machine
For Windows:
-   Navigate to the [PostgREST Downloads page](https://github.com/PostgREST/postgrest/releases/tag/v6.0.2)
-   Select **postgrest-v6.0.2-windows-x64.zip** and **Save**
-   Navigate to the downloaded folder and extract out **postgrest.exe**
-   Test **postgrest.exe** in the Terminal by `cd` to folder and typing in the following command line:
    `./postgrest.exe`
The output should print out the PostgREST version number

For Mac:
-   Navigate to the [PostgREST Downloads page](https://github.com/PostgREST/postgrest/releases/tag/v6.0.2)
-   Select **postgrest-v6.0.2-osx.tar.xz** and **Save**
-   In a Terminal, run the following command line:
    `tar xfJ postgrest-v6.0.2-osx.tar.xz`
The output will be a **postgrest.exe** file
-   Test out **postgrest.exe** in the Terminal by `cd` to folder and typing in the following command line:
    `./postgrest.exe`
The output should print out the PostgREST version number
