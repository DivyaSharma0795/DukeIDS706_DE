# DukeIDS706_DE [![Python CI](https://github.com/DivyaSharma0795/DukeIDS706_DE_ds655/actions/workflows/main.yml/badge.svg)](https://github.com/DivyaSharma0795/DukeIDS706_DE_ds655/actions/workflows/main.yml)


This is a template repository for my IDS 706 Projects

Files in this repository:


## 1. Readme
  The `README.md` file is a markdown file that contains basic information about the repository, what files it contains, and how to consume them


## 2. Requirements
  The `requirements.txt` file has a list of packages to be installed for any required project. Currently, my requirements file only contains generic python packages, more specific packages can and will be added depending on scope of projects over time.
  
  This file can also specify the version of the package to be installed - which is something that will be useful when multiple collaborators are working on a project and need the same version of a package installed to avoid issues


## 3. Sample code files
  These files are creating a simple python function to test if the environment created is working correctly 
   * `average.py` - this is a simple python function to get the average of two numbers
   * `Check_average.py` - this is a python code to test the function defined in average.py


## 4. Makefile
  The `Makefile` contains instructions for installing packages (specified in `requirements.txt`), formatting the code (using black formatting), testing the code (running all the sample python code files starting with the term *'Check...'* ), and linting the code using pylint


## 5. Github Actions
  Github Actions uses the `main.yml` file to call the functions defined in the Makefile based on triggers such as push or pull. Currently, every time a change is pushed onto the repository, it runs the install packages, formatting the code, linting the code, and then testing the code functions

A successful run for the yml file will look like this under Github Actions:


![Successful Run Screenshot](https://github.com/DivyaSharma0795/DukeIDS706_DE_ds655/blob/main/GithubActions_Successful_Run.png?raw=true)


## 6. Devcontainer
The `.devcontainer` folder mainly contains two files - 
  * `Dockerfile` defines the environment variables - essentially it ensures that all collaborators using the repository are working on the same environment to avoid conflicts and version mismatch issues
  * `devcontainer.json` is a json file that specifies the environment variables including the installed extensions in the virtual environment
