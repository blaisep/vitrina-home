# Created by bpabon at 5/8/21
# The authentication feature files
Background Scenario:
"""Some pages require authentication, other pages do not.
"""
Feature: User authentication for some pages
  Scenario Outline:
  """Consider answers to the enduring questions:

	How can I tell if the feature is working?
	What happens when the feature fails?
	How much better is this new version of the feature?
	How can I tell if anyone is using the feature?
  """

  Scenario: A page requires Authentication
  	Given The server checks the auth requirements for the page
  	When The server receives a request for a protected page
  	Then The server checks the status of the session

  Scenario: A page requires Authentication
  """The happy path.
  """
  	Given A user wants to access a protected page
  	When The status of the request is authenticated
  	Then The server returns the response to the request

  Scenario: A page requires Authentication
  """The session is not authenticated.
  """
  	Given A user wants to access a protected page
  	When The status of the request is not authenticated
  	Then The server returns  a redirect to login

  Scenario: A page requires Authentication
  """A user can choose which authZ provider to use.
  """
  	Given A user wants to authenticate
  	When The server returns  a redirect to login
  	Then The user selects the authentication provider

  Scenario: a user  has a Google  account
  """Use Google as a provider.
  """
  	Given A user receives a login form
  	When The user selects Google auth
  	Then The auth widget follows the Google OAUTH flow

  Scenario: a user  has a GitHub  account
  """Use Google as a provider.
  """
  	Given A user receives a login form
  	When The user selects GitHub auth
  	Then The auth widget follows the GitHub OAUTH flow

  Scenario: a user  has a LinkedIn  account
  """Use LinkedIn as a provider.
  """
  	Given A user receives a login form
  	When The user selects LinkedIn auth
  	Then The auth widget follows the LinkedIn OAUTH flow

  Scenario:  Easter egg, a user  has a Facebook  account
  """(Just kidding, we would never support Facebook login.)

  """
  	Given A user receives a login form
  	When The user selects Facebook auth
  	Then The site returns a failure page "Just kidding, we take security too seriously to allow Facebook authentication"
