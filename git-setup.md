# Git and GitHub setup

See [Happy Git and GitHub for the useR](https://happygitwithr.com/) for more
thorough instructions.

- [Install git](https://happygitwithr.com/install-git.html)
- Ensure RStudio knows where to find it (Tools -> Global Options -> Git/SVN)

## Git configuration

Tell git who you are. In the terminal, type the following commands:

```
git config --global user.name "Jane Doe"
git config --global user.email "jane@example.com"
```

Set the default editor to nano if you don't want to accidentally be dropped into vim: 

```
git config --global core.editor "nano"
```

## Set up a new repo

"Initialize", i.e. tell git to track this folder as a git repository:

```
git init
```

In RStudio you can stage files by going to the Git tab and selecting the
checkboxes. Then "commit" these changes (i.e. save a snapshot in git's history)
by clicking the Commit button and writing an informative commit message in the
text box.

## Connect to GitHub

Create a new repo at https://github.com/new

After you create the repository, it will show you a URL to copy. Return to a
terminal and type:

```
git remote add origin <link>
git push -u origin master # don't forget the -u
```

After the initial setup, you should be able to push and pull using RStudio's
push/pull buttons.
