### 1.1 Think About Time Reflection
Some time management and productivity ideas I learned about are meditation, mindfulness, using small habits to develop a growth mindset, the “pomodoro technique”, the Fogg method, and getting into the zone. “Time Boxing” is when a person or team works steadily towards the completion of a goal during a previously agreed period of time. Once the time limit is reached the person or team stops working and evaluates the work that was accomplished. I could use this technique by setting a period of time to work through a few assignments in each module of Phase 0 and then evaluate my progress. The “pomodoro technique” is a timebox technique used for personal work. It is implemented by deciding on a task to be completed, setting a timer for about 25 minutes, working on the task until the timer rings and recording the completed pomodoro with an x to track progress, and then taking a short break for about 3-5 minutes to separate consecutive pomodoros. After four pomodoros are completed a longer break of about 15-30 minutes should be taken.

Currently, I manage my time by creating a list of items I want to complete and working throughout the day taking breaks until I complete all of my tasks. My current strategy works but I feel that through implementing some of the time management and productivity ideas I learned about I can improve my learning. My overall plan to manage my time in Phase 0 is to use the pomodoro technique with some modifications. I will work throughout the week daily by setting a time limit of 45 minutes to 1 hour for each pomodoro with a timer, taking a short break, recording items I completed, reflecting on my progress, and repeating a couple of pomodoros each day. During my short breaks I plan to exercise or meditate to help improve my productivity.



### 1.2 The Command Line Reflection

####1) What is a shell? What is "bash?"

A shell is a program that takes your commands from a text-only user interface such as the CLI and gives them to an operating system to perform. Bash is a Unix shell and command language computer program.


####2)  What was the most challenging for you in going through this material?

The most challenging for me was using redirection and making sure I clearly understood where the I/O goes based on the commands and redirection symbols used.


####3) Were you able to successfully use all of the commands?

I was able to use all of the commands. However, to successfully use the commands without looking at a reference for the syntax and to gain a better understanding of the options available I need to continue to practice.


####4) In your opinion, what are the most important commands and arguments to know?

The cd command is important because you need to understand your file system and how to navigate within the hierarchy of your file system. Being able to type the arguments such as the path from the root directory to subdirectories or move up directories by using (..) is essential to using the cd command. Another command that is important is the grep command because it allows you to search for a specified pattern in files. Some useful arguments are –i (case insensitive) for the pattern, wildcards(*) in the filename, or using quotes around a pattern with spaces. As well, I think understanding how to use redirection is critical because it allows you to combine commands and can make your workflow more efficient.


####5) Can you remember what each of the following does of the top of your head? Write what each does.

-pwd: prints the name of the working directory

-ls: lists the files and directories of a directory

-mv: allows you to move and renames files, and the command cp allows you to copy files and directories

-cd: changes the current working directory

-../: allows you to move up one directory

-touch: creates an empty file in the current working directory, if the file exists it updates the file’s timestamp

-mkdir: creates a directory in the current working directory

-less: displays the contents of a specified text file in the terminal one screen at a time, allows you to page up and down, to exit out of less you can type the letter q

-rmdir: removes a specified directory in the working directory as long as the directory is empty

-rm: removes files, if you give the option –r the command can remove directories and their contents

-help: displays brief summaries of the shell’s commands, if a pattern is specified it displays all commands matching the pattern



### 1.4 Forking and Cloning Reflection

####Create a New Repo

Step 1: Navigate to your github.com profile

Step 2: Click on the “+” in to top right of your navigation bar and select “New Repository”

Step 3: Enter a short and memorable name for your new repository; write a short description (optional)

Step 4: Select whether your repository will be public or private

Step 5: Add .gitignore and/or license options (optional)

Step 6: Click the “Create repository” button to complete the form


####Fork a Repo

Step 1: Log in to github.com

Step 2: Search/find a target repository you want to or can fork

Step 3: Click on the “Fork” button at the top right of the repository page to create a copy of the repo onto your own GitHub account


####Clone a Repo

Step 1: Open your terminal and check where you are with pwd to make sure you are in the correct directory you want to clone the repo to (make sure not to clone a repository in another local GitHub repository)

Step 2: Copy the URL of your FORKED repo

Step 3: Type “git clone [copy of FORKED URL]



####Reasons to Fork a Repo

You can fork a repository rather than creating a new one to propose changes to someone else’s project, use someone else’s project as a starting point for you own idea, and/or use it as an exemplar to help you study and practice reading code.



####Reflecting on My Struggles

I struggled with deleting the clone of the repository that was locally on my computer because I was using rm -r. However, going back through my notes and using the man rm command I found I needed to use –f option as well to force the removal with out being prompted. This helped to reiterate how important it is to use resources such as the man command or notes you’ve taken.

