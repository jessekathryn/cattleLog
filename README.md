# cattle_log
Rails application for tracking cattle.

# Directions
Clone into repo 

'git clone repo-cattle_log'

Change into directory

'cd cattle_log'

Download any missing gems needed to run

'bundle install'

Start rails server at Port :3000

'rails s'

Build Your Farm

Create new cows first and then each item on the left side-bar that you wnat in your farm. Generate a report to play with the dashboard.

# Cattle-Log 

Project Description

Business Understanding <br/>
My father is a farmer and would like a simple app to track his cows.

Data Understanding <br/>
The data is based off of the stock market prices (https://beefmarketcentral.com/) and on the specs of cows farmed on the app owner's land. 

Data Preparation <br/>
Data is scraped from the beef market price website daily.  Other data is uploaded or entered into the app by the user.  The app allows for four working Active Directory Tables: Cows, User, Expenses, Fields.  The Joined tables are Cows (between user/field) has many users through Cow and has many fields through Cow.  Expenses is the second joined table,if utilized, (between field/cow) has many users through expenses and has many fields through expenses.

Modeling <br/>
Models for the app includes: User, Field, Expense, Cow.  The User is the MVP here and has other opportunities to play with Active Storage gems, Active Admin gems and Google APIs for field coordinates and data if interested in using these items with the primary purpose of tracking the cows/fields/expenses.

Deployment Deliverables <br/>
The preliminary deliverable is a Sinatra version that is found here on this repo: https://github.com/jessekathryn/cattle-log.  The app was initially deployed on Heroku but is not functioning, merely a display of the app.  However, the repo is downloadable and functionable for a desktop console, if applied or cloned appropriately.  The beta version of the app was created for the first Ruby portfolio project at the Flatiron School.  This app is built using Sinatra Framework with several Gem dependencies.
