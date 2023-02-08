## Module Description

In this module, you'll learn about how to create a Dockerfile and fix a merge conflict as well as creating a branch.

[Lecture Video](https://youtu.be/9mw4TTVA2oA)

## Hands-On Instructions

1. Clone the repository using the "Get Started" instructions.
2. Reuse your old app repository on Dockerhub and update line 6 in
   the [.github/workflows/master.yml](.github/workflows/master.yml) file to match your repository name.
3. In your project repository on GitHub, navigate to the "Settings" tab, then the "Secrets and Variables" option on the
   left menu. Add your Dockerhub username and password as repository secrets under the names DOCKER_USERNAME and
   DOCKER_PASSWORD, respectively.
4. Create a branch called "dockerfix" and switch to the branch using the command "git checkout -b dockerfix"
5. Add the CMD line to set the default word to say hello to i.e. "CMD ["keith"]"
6. Build the Dockerfile with the command "docker build -t myapp" which creates an image called "myapp"
7. Run the docker image that you just created "docker run myapp" and you should see the default output from the CMD
   i.e. "hello, keith"
8. Run the docker image again with the command "docker run myapp joe" and the output should be "hello, joe". Notice that
   the CMD can be overridden when running the image. This is how you can change the input to your program once it has
   been "dockerized" to run as an image inside a container.
9. Now you need to add / commit the changes and switch to the master branch to merge. If you get a merge conflict then
   you can resolve it like this:  git status will tell you the file and then edit it to be the way you want. Then do an
   add commit to save the merge resolution.
10. Build the docker image again and run it one last time to make sure it still works after the merge. If it fails to
    build because of line endings check the requirements.txt file for weird text and remove it. Also hylight the text
    and look at the bottom of Pycharm and you will see something that says UTF something click it and make it say UTF
    and look next to it and it will say LF or CR or CRLF and make it say CR or LF. This is a common problem that can
    creep in with the requirements or Dockerfile after the merge resolution. We will talk about line ending next week.
11. Once the image builds you have to another commit to save the changes to line endings if you had to do this.
12. Once you have it all run the grader by typing pytest -c pytest_grade.ini to check that it passes grading
13. After everything works then push it up to GitHub.

## Get started:

Each module in this course will follow the same process, unless otherwise noted on the assignment.

1. Add your information to this file: [here](myinfo.json)  - Replace change with your information.
2. Click the "Start Assignment" button below to accept this assignment. The assignment will be duplicated on the NJIT
   WIS GitHub organization, and then you will be added to the repository along with the professor and the graders.
3. Clone the repository to your local computer using Pycharm.
4. Type "python -m pip install -r requirements.txt" to install the dependencies
5. When you complete the assignment, you must push the code back and then go to the "Actions" tab on your repositories'
   homepage to see it autograde the assignment. If the autograder turns green then you got 100, if it is red then you
   will need to click on the autograder link on that page to find your errors to fix them. You should test if your code
   passes the grader locally before pushing by following the tip below.  YOUR OLD WORKFLOWS WILL NOT TURN GREEN

[![Click to Start Assignment](module_content/images/start.png)](https://classroom.github.com/a/p88kre1s)

## Tips

1. If you type "python -m pytest -c pytest_grade.ini" the code will run the grader tests.
2. If you type "python -m pytest" the code will run your own automated tests that you put in the "tests" folder.
3. If you type "python -m pytest -s" you will be able to see your print statements your code output when you run the
   tests
4. If you type "python -m pytest <replace with the path to the test file>" you can run a specific test file
5. Whenever you see <replace with...> don't replace the entire string including the < > signs.

## Licence

Copyright (c) 2012-2022 Scott Chacon and others

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.