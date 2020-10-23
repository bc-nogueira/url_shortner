# URL Shortner

This is a web application to generate shortned URL links.
It is possible to enter an URL and then use the shortned URL.
The app counts how many times the tiny URL was clicked and display the top 100 most accessed URLSs.

### Versions:

* Ruby 2.6.3

* Ruby on Rails 6.0.3.4

### Gems:

* Pry

* Awesome print

### How to deploy

* Clone the project from Github

* To install all dependencies run:
  * `bundle install
  * `yarn install`

* To prepare the database run `rails db:migrate`

* With everything configured run `rails s`

* To access the application, in your browser access `localhost:3000` (or any other port you are using)

### How to use the app

#### Generate a new shortned URL:

* Enter the desired url in the input and press *Generate* to submit

#### To access a shortned URL:

* To access a generated shortned URL use: `localhost:3000/:tinyurl` 

### TODO:

* Show the complete url after generation

* Page with all generated URLs