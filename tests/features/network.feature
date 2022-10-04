# Created by bpabon at 5/8/21
Feature: L1 to L3 - Network descriptions


  Scenario Outline:

	The network tests will inspect the characteristics of the network  and the record the results.
	Examples:
	Report header includes:
		| report-category | test-date | hostname | repo-url | commit-id |



	Scenario: host with multiple interfaces
		Given  a single interface
		When I inspect an interface
		Then results include
			| interface-id | media-type | host-address | network-name | network-address | gateway |

	Scenario: interface with multiple networks
		Given a single network
		When I inspect a network
		Then results include
			| interface-id | protocol-name | network-name | host-address | network-address | gateway | media-type |

	@success
		Scenario: test succeeds
			Given a test result
			When I inspect the network
			Then the test records the values

	@failure
  Scenario: test fails
		Given no test result
		When the test has no result
		Then  the test records the value "-"

	@progress
  Scenario: test has a goal
		Given a target result
		When  previous results exist
		Then  the test records
			| observed | min/max/avg | target | trend |

	@usage
  Scenario: A test is run multiple times
		Given multiple test iterations
		When  content manager requests test count information
		Then  Report returns "<test-name>" has been run "<count>" times.



