# Created by bpabon at 5/8/21
Feature: Reports in a web browser


  Scenario Outline:

	The feature tests will invoke the pertinent step functions and the record the results.
	The test results get written to HTML files.
	Given Table with examples
		| Category | <category> |
		Examples:
			| Category     |  |
			| Datalink     |  |
			| Network      |  |
			| Transport    |  |
			| Session      |  |
			| Presentation |  |
			| Performance  |  |

	@success
  Scenario: HTML reports succeed
		Given User opens  <category> HTML report
		When the page load completes
		Then The server records another event

	@fail
  Scenario: HTML reports fail
		Given User opens  <category> HTML report
		When Page fails to load
		Then  <category> Error gets logged

	@progress
  Scenario: Upgrade the  <category> HTML reports
		Given a previous metric
		When  compare current and previous values
		Then  the  <category> report contains both values and the difference

	@usage
  Scenario: Track  <category> page views
		Given User opens HTML report
		When  Server returns a page
		Then  Page view count increments


	Scenario: A feature contains multiple steps
		Given  <category> result includes multiple steps
		When user selects the feature
		Then  <category> report expands to show the individual step results

	Scenario: Reports for multiple categories
		Given Multiple categories contain results
		When User opens the top level page
		Then top level page lists categories with links