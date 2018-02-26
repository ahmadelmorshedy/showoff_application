# Showoff Instagram Aplication

Login to your Instagam Account & View your media

## Using the Application
  - Go to https://showoffapplication.herokuapp.com/
  - Click Instagram Icon
  - Login
  - You're viewing your media

## Tech Specs
#### ruby version
2.3.4
### Gems used
  - rails 5.1.5
  - bootstrap-sass ~ 3.3.0
  - jquery-rails ~ 4.3.0
  - instagram ~ 1.1.0
  - capybara, selenium-webdriver, rspec-rails, and rack_session_access (for tests)

## DB Schema
No database used

## Running Tests
  - Run 'bundle exec rspec'

## Running the app locally
  - Save environment variables:
    - INSTAGRAM_KEY
    - INSTAGRAM_SECRET
    - CALLBACK_URL
  - run 'bundle exec rails server'

## Notes
  - Due to that's currently a test site, Instagram's app is in SandBox mode, it cannot authenticate users not registered in the app, please mail me with your instagram test accounts (username) to add them (in case you run heroku app)

## Furhter Improvements
  - Adding Test Cases
  - Enabling some kind of 'Show' method for a single image (currently images are indexed in one page)
  - Testing for users with huge image sets ( I tested with 0, 1 and 10 posts)

## More furhter
  - Adding more functionality (browse likes, search hashtags, etc...)
  - Submitting the Instagram App