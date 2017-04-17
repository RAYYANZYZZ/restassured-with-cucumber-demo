# Created by garth.combrinck at 2017/04/17
Feature: User calls web service to get a book by a invalid ISBN

  Scenario: User calls web service to get a book using invalid ISBN
    Given a book does not exist with an isbn of 9781451648541
    When a user tries to retrieve the book by isbn
    Then the error status code is 200
    And response includes the following values
      | totalItems 	 		| 0 					|
      | kind				| books#volumes			|