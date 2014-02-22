Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

Scenario: Example steps
  Given I am on the Welcome Screen
  Then I swipe left
  And I wait until I don't see "Please swipe left"
  And take picture

Scenario: Sign In valid
  Given I am on the Sign In Screen
  When I sign in with "valid" username and password
  Then I am "on" welcome screen

Scenario: Sign In invalid
  Given I am on the Sign In Screen
  When I sign in with "invalid" username and password
  Then I am "not on" welcome screen

