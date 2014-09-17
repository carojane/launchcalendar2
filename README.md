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
```
## For members of LA Fall 2014 cohort

To record your own Launch Academy assignments, clear the 'Assignments' table then use the /form page to enter your own information.

By entering your weekly blog post title and url on the /forms page, you will overwrite my info.

If you want to change a focus of a particular day, use the /forms page to overwrite my info.

## For future cohorts

Clear the 'Assignments' and 'Days' tables.
Go into the 'Weeks' table and change the 'week_start' to match the Monday of each week.
Go into the 'Campaigns' table and change the 'start_date' and 'end_date' of each campaign.
Record your information using the /forms page.
