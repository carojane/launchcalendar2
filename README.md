# Launch Academy Calendar
This is a dynamic website recording my work during the Fall 2014 Cohort of Launch Academy

![screenshot](http://carojane.github.io/images/alphacal.png "Alpha")

## Forms

###Daily Focus
Adds a focus for each day, or overwrites the focus if there is one already listed for that day.

###Assignmets
Adds an assignment. If there is already an assignment with the same name, the information will be overwritten.

![screenshot](http://carojane.github.io/images/assignmentlog.png "assignment")

###Systems Check
Adds or updates the weekly systems check title, blog url and title.

## Make This Your Own

```no-highlight
# Clone down this template
git clone git@github.com:carojane/launchcalendar2.git <YOUR_APP_NAME>

# Move into your app's directory
cd <YOUR_APP_NAME>

# Remove the old git history and start your own
rm -rf .git && git init && git add -A && git commit -m 'Initial commit'

# Install all the gems
bundle install

# Create database
rake db:create
```
## For members of LA Fall 2014 cohort

To record your own Launch Academy assignments, run `rake db:migrate` and go at it.

## For future cohorts

Before running migrations (or after resetting database if you already did), go into "add_initial_campaigns" migration and change campaign dates to reflect your cohort's campaign. Also change `Date.new(2014,8,11)` to the first date of your cohort.
