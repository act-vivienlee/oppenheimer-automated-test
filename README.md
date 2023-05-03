## Getting Started
### Pre-requisites
Please ensure that you have the following installed before proceeding to the next section.
* <b>Python</b>  <p>
  Navigate to https://www.python.org/downloads/ to download & install the latest version of Python
* <b>Pip</b> <p>
  Pip should be installed by default after downloading Python. Please do verify that this is the case.

### Installation
This section contains the python libaries/modules required to execute this project.
* Robot Framework
  ```sh
  pip install robotframework
  ```
* Selenium Library
  ```sh
  pip install robotframework-seleniumlibrary
  ```
* Datadriver
  ```sh
  pip install robotframework-datadriver
  ```
* Requests (used for API)
  ```sh
  pip install requests
  ```
* chromedriver <p>
  1. Navigate to https://chromedriver.chromium.org/downloads .
  2. Download the appropriate chromedriver based on your Chrome version
  ![image](https://user-images.githubusercontent.com/131746992/235864798-7e9faade-f036-4e9a-b516-4a160d07e211.png)<p>
  For example, if your Chrome is v112, please download the one for v112.
  3. Once you have installed the chromedriver, place it in your Python Script folder. It is usually found in ```C:\Users\your-username\AppData\Local\Programs\Python\[Python Version]\Scripts```

## Folder Hierarchy
### Config
This folder contains all relevant test data in either csv, xlsx or json format.
### Lib
This folder contains all the necessary python functions used in this Project. E.g. the Python function to call POST/GET requests
### POM
This folder stores all the Page Object Models (POMs) or in other words, the web elements, used in this Project. API endpoints, as well as other variables are stored here too.
### StepDefinition
This folder contains all the keywords' step definitions, as well as a common import file that can be shared across all test scripts.
### TestSuite
This folder consists of all the API & UI test scripts.

## How to Run the Scripts?
1. Clone this project
    ```sh
    git clone https://github.com/act-vivienlee/oppenheimer-automated-test.git
    ```
2. Open command prompt
3. Change directory to the API/UI folder:
    * API
    ```sh
    cd /path/to/project/TestSuite/API
    ```
    * UI
    ```sh
    cd /path/to/project/TestSuite/UI
    ```
4. A sample command to execute the script:
    ```sh
    robot -d Results API01_InsertSingleRecord.robot
    ```
