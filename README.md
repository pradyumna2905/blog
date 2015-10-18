# Blog app
##### A Ruby on Rails application implemented using BDD (Behavior Driven Development) and Automated Testing using the testing suites, RSpec and Capybara

To run the app, git clone the repository to the desired folder and run the following commands before running the rails server

```
bundle install
rake db:migrate
```

This should set up the database and install the required gems on your local machine.*

Then start the rails server by typing
```
rails server
```
## Ruby gems installed for testing
* devise, 3.5.1
* guard-rspec
* capybara, 2.4.4

## Running Tests

To run the test already present, make sure you have all the gems installed. To run tests type in ```rspec``` or ```guard``` in your terminal window. When using ```guard``` be aware that it has been configured to run test when the file which you save. All ```guard``` tests can be run by going in the ```guard``` console and hitting ```Enter``` or ```Return```.

## Versions
* Ruby: 2.2.2.95
* Rails: 4.2.1
