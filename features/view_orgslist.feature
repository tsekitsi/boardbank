Feature: View List of Organizations

   As a BoardBank User
   So I can see which organizations I am interested in
   I want to be able to view the list of organizations

Background:
	Given I login as a User
	And I am on the homepage
	Given the following organizations exist:
	|OName             | About                         | Email     | Password |
	|Happy Makers      | Making people happy           | hm@hm.com | password |
	|Animal Shelter    | Rescuing stray dogs           | as@as.com | password |
	|L0vely            | Nerd dating app	           | l0@ve.com | password |
	|Mary's Cupcakes   | Free cookies for all children | mc@mc.com | password |


Scenario: View List of Organzations
	  When I follow "Organizations"
	  Then I should be on the Organizations page
	  And I should see "List of Organizations"
	  And I should see "hm@hm.com"
	  And I should see "as@as.com"
	  And I should see "l0@ve.com"
	  And I should see "mc@mc.com"