# Unit10ConcourseLab

## Introduction:

In this lab, you will learn to use another industry-standard pipeline tool, Concourse, to build a simple CI/CD pipeline.

## Objective

For this lab, you will gain hands-on experience using Concourse for CI/CD and managing your Concourse pipelines
as code. 

## Getting Started:

1. Copy the starter code from here into a new, private repository in your personal GitHub account.  Be sure to add me ("cscc-luke-rouker") as a collaborator.
1. Deploy concourse with docker-compose to your local machine with the below commands: 
    1. $ wget https://concourse-ci.org/docker-compose.yml  
    1. Edit docker-compose.yml, change CONCOURSE_WORKER_BAGGAGECLAIM_DRIVER from overlay to naive
    1. $ docker-compose up –d 
1. Test your installation by opening localhost:8080 in a browser 
1. Click the linux link in the Concourse web browser screen to download the fly CLI 
1. Install the fly CLI to /usr/local/bin/fly , and allow executable permission with $chmod +x /usr/local/bin/fly
1. You will probably want to alias your target for convenience.  To alias the target to "tutorial":
    1. $ fly --target tutorial login --concourse-url http://127.0.0.1:8080 -u test -p test
    
1.Set max user namespaces with this command:
    1. $ sysctl -w user.max_user_namespaces=15000

## Understanding the Starter Code

This repository contains some skeletons for scripts that will get you started on creating your Concourse pipeline.  You'll use the program.sh script to complete the "build" portion of the assignment and the "testProgram.sh" script to write tests on your program.  myPipeline.yml will be the base of your Concourse pipeline, which will simulate a real pipeline by calling your program.sh and testProgram.sh scripts and reporting the results of your scripts.

## Completing the Assignment

In this lab, we'll create a simple program which writes the results of a simple problem to a file.  We'll also create a test script to check the results of that program.  Lastly, we'll write a simple Concourse pipeline to run the program and check its results with the test script (and report those results to the user).

1. For the first part of this lab, in program.sh, write a script that computes the sum of the first 1000 even numbers and writes the results to a file.
1. For the second part of the lab, in testProgram.sh, write a script that validates the results of program.sh
1. For the final part of the lab, fill in myPipeline.yml so that you have constructed a Concourse pipeline which runs program.sh and testProgram.sh and reports to the user whether program.sh passed its test or not.

## Hints
1. You should use exit codes to report to the user whether the test passed or failed

## Submitting Your Work

1. Publish your repository as a private repo, and ensure that you have pushed the latest version
1. Open a pull request
1. Submit the assignment in Blackboard 

__NOTE: I will provide feedback via. comments in your pull request.__
If you need to amend your work after you issue your initial pull request:

1. Commit your updates
1. Push your changes to gitHub
1. Verify the new commits were automatically added to your open pull request
