=====================
Future possibilities
=====================


A showcase for dev tool chains
==============================


The Static HTML branch
------------------------

(use case: *just publish docs* )

We start with an opinionated Sphinx project, some relevant extensions, and a few text files in a git repo.

Optional support for readthedocs to handle multiple versions.

Just enough to get your content to `rtfd.io <https://readthedocs.org/>`_
We'll include support for `PlantUML <https://crashedmind.github.io/PlantUMLHitchhikersGuide/C4/c4acme.html>`_ because
we want to treat diagrams as code.
At this point, all the control is handled manually via the shell.

.. note:: The outcome is versioned HTML with auto-generated diagrams


The automation branch
---------------------

(use case: *I update my portfolio as I evolve* )

This might be a good place to begin automation because from here on, the project will accrue new directories and permuted Dockerfiles, etc.
Create some copier templates to make automate changes going forward. Since you are likely to make changes to the project at this point, we add some automation tools for this, such as:

	- building html, pdf
	- `copier <https://copier.readthedocs.io/en/latest/>`_ for updating existing projects
	- creating presentation decks with `hovercraft <https://pypi.org/project/hovercraft/>`_
	- running `commit hooks <https://github.com/pre-commit/demo-repo#successful-commit>`_

.. note:: The outcome is automation of tests and source control


The packaging branch
---------------------------------

(for the *my work uses binaries and I need to bundle dependencies* use case)

This is a devops-oriented portfolio, so we want to encourage reproducible builds, feature flags, canary deployments,
supply chain security, etc. Packaging in python is... nuanced. There are many ways to package python projects, we will use one.

.. note:: The outcome is to use containers for testing and bundling dependencies

The auth branch
----------------

Add user authentication to support more dynamic scenarios like protected pages or more detailed analytics.

.. note:: The outcome is to support OAUTH integration with Google, Github, LinkedIn as examples.

The orchestration branch
-------------------------

Add orchestration to minimize downtime when you do upgrades, and how to rollback if things go sideways.
With your portfolio available and on display, you will want to stay on top of which parts work well and which may need repair.

.. note:: The outcome is to deploy your portfolio site and manage upgrades.

