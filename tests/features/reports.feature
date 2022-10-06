# Created by bpabon at 5/8/21
Feature: Reports use the test results to describe the characteristics of the infrastructure. Since the reports represent the state of the project when the tests were run, they should always include and identifier (eg. commit id) to the code of the tests.
	Strict reproducibility is not a goal of the project, but we encourage pinning dependencies where appropriate.
	A future feature describing the criteria for reproducible builds is possible.


# use markdown for very concrete examples https://github.com/cucumber/common/blob/main/gherkin/MARKDOWN_WITH_GHERKIN.md

  Scenario Outline:

	The feature tests will invoke the pertinent step functions and the record the results.
	Report header includes:
		| report-category | test-date | hostname | commit-id |


		@success
		Scenario: report succeeds
			Given A report for "<category>"
			When User opens  <category> HTML report  # The when should be a user action
			Then The server records another event

#					| Category | Link |
#			Examples:
#				| Category     | Link |
#				| Datalink     |      |
#				| Network      |      |
#				| Transport    |      |
#				| Session      |      |
#				| Presentation |      |
#				| Performance  |      |

	@failure
  Scenario: report fails
		Given User opens  <category> HTML report
		When user tries to generate deport for Dec 27 Page fails to load
		Then  <category> Error gets logged with (run date, list of fields, server name, git sha, etc)
		# Are there multiple failure scenarios ?

	@progress
  Scenario: Upgrade the  <category> HTML reports
		Given a previous metric
		When  compare current and previous values
		Then  the  <category> report contains both values and the difference

	@usage
  Scenario: Track  <category> page views
		Given "<category>" report has been viewed multiple times
		When  content manager requests page count information
		Then  Report returns a table  # "This page has been viewed {number} times"


	Scenario: A feature contains multiple steps
		Given  <category> result includes multiple steps
		When user selects the feature
		Then  <category> report expands to show the individual step results

	Scenario: Reports for multiple categories
		Given a list of categories
		When I select a category
		Then each category has a list of corresponding reports

