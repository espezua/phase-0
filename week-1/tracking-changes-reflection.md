####How does tracking and adding changes make developers' lives easier?
Version control makes the lives of developers easier because:
  *They can go back to a specific commit and look at the state of the files
  *Work on debugging while the code is reverted to a working state
  *Prevents having to start a project over from the beginning


####What is a commit?
In version control, a commit is a ‘save point’ of all the changes you have made since your last commit.  The commit points to a specific version of your work in a repository. It includes any changes made to a file or set of files.


####What are the best practices for commit messages?
Best practices for commit messages:
  *Capitalize the first letter
  *Limit the message to 50 characters or less
  *Use the imperative mood
If your message can complete the sentence “If applied, this commit will…” your message is in imperative mood.


####What does the HEAD^ argument mean?
The HEAD^ argument means the last commit you made.


####What are the 3 stages of a git change and how do you move a file from one stage to the other?
3 States of a File in Git:
  *Modified/Working Directory- you have modified the file in your work directory
  *Staged/Staging Area- you add a modified file to your staging area to go into your next commit
  *Committed/.git Directory- a snapshot of your work taken from the staging area and stored in your repository

To move a modified file from the working directory to the staging area you use “git add”.  Once a file has been staged and you’re ready to commit the changes you use ‘git commit –m “message”’.


####Write a handy cheatsheet of the commands you need to commit your changes?
How to Make a Commit
  *type ‘git add <file>’
  *type ‘git commit –m “message”’


####What is a pull request and how do you create and merge one?
A pull request is a workflow method to propose changes made to code on a local repository that would merge into the remote repository’s master branch if the request is approved.  To create and merge a pull request do the following:
  *Create a branch to work on with “git checkout –b feature-branch-name”
  *Create a change by modifying a file or files
  *Use “git add” to stage your changes and then ‘git commit –m “message”’ to commit your changes
  *Push your feature branch to your remote fork on GitHub with “git push origin feature-branch-name”
  *Then go to GitHub and click on the button Pull requests
  *Then “hack” GitHub by changing the base fork in the URL to your GitHub username
  *The “base fork” should point to your username and then click the button “Create pull request”
  *Click the button “Merge pull request” to merge it
  *Click the button “Confirm merge”



####Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it allows team members to review the code before it is merged into the master branch.  It helps to protect the master branch so it always works.
