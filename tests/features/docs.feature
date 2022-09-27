# Created by bpabon at 5/8/21
Feature: Documentation in static HTML
	# When the docs include a code sample, extend the CI to test the code blocks.
   # Python doctest will usually do the trick.

  Scenario Outline:
  """Consider answers to the enduring questions:

	Success: How can I tell if the feature is working?
	Failure: What happens when the feature fails?
	Improvement: How much better is this new version of the feature?
	Usage: How can I tell if anyone is using the feature?
  """

  Scenario: HTML docs get published to readthedocs.org
	Given a doc gets updated in { `develop` | `main` | `stable` }
	When readthedocs receives a webhook event
	Then readthedocs publishes a new build for the branch { `develop` | `main` | `stable` }

  Scenario: HTML docs have composable code blocks
	Given A code block appears in HTML
	When a human selects the code block
	Then the code block is copied to the clipboard

  Scenario: HTML docs test executable code blocks
  	Given a code block example
  	When  the doc is built
  	Then the block must pass a test
    # Enter steps here

  Scenario: Docs include diagrams rendered from composable text
	Given diagrams use PlantUML syntax
	When the Sphinx builder processes the text source for a diagram
	Then the text is rendered as a diagram in PNG

  Scenario: HTML docs include images
	Given the source code includes an image directive
	When the image file is in the correct directory
	Then the image appears in the HTML doc

  Scenario: HTML docs have a dynamic glossary
	Given a doc has terms or acronyms
	When a term is marked in the doc source
	And that term is defined in the glossary
	Then the HTML doc links the term to the definition

