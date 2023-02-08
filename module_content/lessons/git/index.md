Git is a distributed version control system (VCS) used to track changes to a collection of files and coordinate work on those files among multiple people.

Here's how to do a commit in Git:

Make changes to one or more files in your Git repository.

Use the git add command to stage the changes you want to commit:

$ git add <file1> <file2> ...

Use the git commit command to record the changes as a new commit:

The -m option followed by a string provides a commit message, which is a brief description of the changes you've made. A good commit message should explain what you changed, why you changed it, and how you changed it.

Finally, use the git push command to upload the new commit to a remote repository:
$ git push