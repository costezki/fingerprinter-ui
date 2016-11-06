Feature:  Generating the stats report
  Users shall be able to generate simple descriptive statistics for single CVS files
  by filling in a form with title, author, description, and a single CSV file
  which is then passed to a python script "triple_profiler.py" hosted in RDF-fingerprint-diff project
  resulting in a PDF file offered back to the user as download

  Scenario: User submits the "stats" form
    Given the form is accessed at "/stats"
    And the form is displayed containing title, author, description, and single file upload
    When the "generate report" button is pressed
    Then an AJAX call is initiated to "/stats-post"
    And the form fields are sent together with the CSV
    And the progress bar indicated feedback on form processing and report generation
    And keep the ajax connecten open to send back the PDF file and/or the error from the Python script
    And run a "loading clock" or a "spinning cog" indicating server process

  Scenario: CSV Files are stored in /uploads folder
    Given the form was submitted
    When the file arrived to the server
    Then it is renamed into its original name
    And moved into folder /uploads

  Scenario: Call python script to fulfill the form
    Given the python code has been downloaded and configured
    And the user submitted a form
    And the CSV file is already in the /uploads folder
    And prefix.csv file is available somewhere (eg. in /uploads)
    When the form successfully parsed with "formidable" parser
    Then prepare the PythonShell (python-shell) object
    And run the python shell as a child process
    And catch any output either logs or errors

  Scenario: return the PDF report to the user
    Given the python process terminated
    And no errors were thrown
    And the report file is available
    And the AJAX connection is open
    When the child process fires the 'close' event
    Then send back to the user interface the PDF file for download
    And dismiss the PythonShell object
