# Api_robot_framework
Robot framework to automate the api

Robot Framework is a generic open source automation framework. It can be used for test automation and robotic process automation (RPA)

Prerequisites for Robot framework tutorial
* Install the latest Python build from the [python](https://www.python.org/downloads/). We recommend using the latest version.
* Make sure pip is installed in your system. You can install pip from [here](https://pip.pypa.io/en/stable/installation/).
* Install virtualenv which is the recommended way to run your tests. It will isolate the build from other setups you may have running and ensure that the tests run with the specified versions of the modules.

`pip3 install virtualenv`

Step 1: Clone the api_robot_framework repository and navigate to the code directory as shown below:

`git@github.com:Sujatha20/api_robot_framework.git`

Step 2: Create a virtual environment in your project folder the environment name is arbitrary.

`virtualenv venv`

Step 3: Activate the environment.

`source venv/bin/activate`

Step 4: Install the required packages from the cloned project directory:

`pip3 install -r requirements.txt`


## Running test scenarios on command line:

Step 1: Naviage to the repository folder  api_robot_framework

Step 2: Run the following command

`robot Automation/Test/Tc_Search_Page_Api.robot`

Step 3: Python enviornmentment is not set in .zshrc file, the command should be run by

`python3 robot Automation/Test/Tc_Search_Page_Api.robot`

Step 5: Report (report.html) will be generated and stored within Automation folder.

