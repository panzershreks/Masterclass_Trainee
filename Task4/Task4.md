#   Task4
****
##  Task4A
### Given the data in a CSV, write a short Python snippet to read the CSV, extract only the 3rd and 1st fields (in that order) and write the output in JSON. 
-   Create a Python file and open it in your favourite code editor
-   You will need to:
--- Import the csv, json, and sys modules
--- Ensure that the script takes in any given .CSV file. i.e. The CSV file is not hardcoded into the script
--- Select the third and first columns in the CSV
--- Create a new JSON file and dump the selected values into the JSON file
-   Save the file and run the file in a Terminal 
    `python [FILE_NAME].py [CSV_FILE].csv`
-   The output should be a JSON file titled **task4a.json**

### Bonus: Write in XML
-   Open the file created in a code editor
-   Edit the script to:
--- Import the xml module
--- Perform an XML duump in a .xml file
-   Save the file and run in Terminal
    `python [FILE_NAME].py [CSV_FILE].csv`
-   The output should be a JSON file titled **task4a.json**, and a XML file titled **task4a.xml**


****
##  Task4B
### Given the data in a CSV, write a bash shell script, uisng regular expressions to replace the ID with "XXXXX". You may assume IDs have 6-7 digits with an optional letter.
-   Create a Shell Script and open it in a code editor
-   Ensure that your script contains the shebang
-   You may use `awk` and `gsub`
-   Save your file and run in Terminal using the following command line:
    `bash [FILE_NAME].sh [CSV_FILE].csv`
-   The output should be a CSV file titled **replaced.csv**


