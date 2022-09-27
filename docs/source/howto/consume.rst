==============================
Use Vitrina for your portfolio
==============================


How does Vitrina work?
======================

.. image:: _images/setup.png
    :scale: 50
    :alt: A sequence diagram showing the steps
    :align: center


    - Launch a top-level script which runs the test automation and
    - returns a list of the features and their current condition.
    - The HTML also includes text explaining the purpose of each feature and the result of the most recent test run.

The tests and their results produce the documentation that both describes and validates the implementation.
The purpose of the web interface is to serve of a description of... itself.

If you decide to add, for example, high availability; then extend the tests with steps that exercise HA and edit the description to include your enhancement.


Quick Start
============

If you're in a hurry and you just want to get a quick portfolio built, these steps should help you out:

	- Clone this repo
	- Edit the README and the content in the docs/folder to suit your project
	- ``make html``
	- push your html to wherever you host your documentation.

.. note:: These steps will build the doc. Stand by for more details


Minimal Instance
================

You should be able to clone this project, and run the `pypyr` pipeline, which will note any missing system requirements.
Once you have satisfied the system requirements, you can run the ansible role to install the project and run the conformance tests.

