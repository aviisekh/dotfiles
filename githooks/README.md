githooks
========

These are some handy githooks, which will help avoid silly mistakes and adhere to coding guidelines.

Most of the checks are for languages in a typical RoR stack.


pre-commit
----------
### Unconditional Checks ###
These checks should be completely non-controversial, and are therefore non-configurable.

1. Catch common errors, such as checking in...
    1. git merge conflict markers
    2. Personalized debugging statements
    3. Calls to invoke the debugger, either in Ruby or in JavaScript
2. Check for probable private key commits.
3. Check for probable files like database.yml and application.yml that can contain secrets

### Conditional Checks ###
Conditional checks may be controversial or inappropriate for some projects, and so can be deactivated via `git config`.

They are configured to be as strict as possible, and include instructions for turning them off on a project-wide or machine-wide basis.

1. Check the syntax of Ruby files using ruby -c.
    * In some circumatances (i.e., old Mac OS X versions), an app may use an old version of git that cannot handle newer syntax, such as the Ruby 1.9 JS hash syntax.  This will result in bogus flags.
    * Run `git config hooks.checkrubysyntax false` in a project directory to deactivate the check.


Bypassing the Checks
--------------------
Call git commit with the `--no-verify flag` to ignore all of these checks.

There's no way to turn off individual checks (other than the "conditional" ones mentioned above).  That's why this script goes to pains to display *all* errors, rather than just the first one.  If you want to throw the `--no-verify` flag, you should clean up your code to the point where the **only** errors are the ones you feel safe ignoring, **then** throw the flag.

Installation
============
Clone this repository locally into some central location.  Then run its setup script, passing the location of *the repo that you want to add hooks to* as an input argument.
    
    cd (to your desired directory)
    git clone git@github.com:balabhadra/githooks.git
    cd (into the newly-created repository directory)
    ./setup.sh path_to_project_repo_to_add_hooks

This will copy the githooks to the desired repo.  


Updating the Hooks
==================
If you update/change the hooks or the pull latest changes, you'll need to run the setup script again.

	cd (into the githooks repository directory)
	./setup.sh path_to_project_repo_to_add_hooks

