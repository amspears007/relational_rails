# README
A sitcom can have many characters
characters belong to a sitcom
Table -> Sitcom
-autogenerated id
-autogenerated created_at
autogenerated updated at
name: string
number of seasons: integer
streaming available: string
end_date: date

Iteration 1
CRUD
[ ] done

User Story 1, Parent Index 

For each Sitcom table
As a visitor
When I visit '/parents'
Then I see the name of each parent record in the system

[ ] done

User Story 2, Parent Show 

As a visitor
When I visit '/parents/:id'
Then I see the parent with that id including the parent's attributes
(data from each column that is on the parent table)

[ ] done

User Story 3, Child Index 

As a visitor
When I visit '/child_table_name'
Then I see each Child in the system including the Child's attributes
(data from each column that is on the child table)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
