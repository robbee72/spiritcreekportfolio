To create new topics to be query in downdrop

rails console
  > Topic.create!(title: "Ruby of Rails")

 continue adding titles needed.

rails console

  > Skill.first.update!(title: "Ruby on Rails", percent_utilized: 60)

  > Skill.first  

  > skill = Skill.find(3)

  > skill.title = "React"

  > skill.percent_utilized =  25

  > skill.save

  (0.3ms)  BEGIN
  SQL (0.7ms)  UPDATE "skills" SET "title" = $1, "percent_utilized" = $2, "updated_at" = $3 WHERE "skills"."id" = $4  [["title", "React"], ["percent_utilized", 25], ["updated_at", "2018-02-21 14:30:41.895461"], ["id", 3]]
   (2.0ms)  COMMIT
 => true


 Add a skill...

 > Topic.create!(title: "Ruby of Rails")

 ** Remember " create! " forces change


 HEROKU deploying

 after git push
 > git push heroku master
 > heroku run rake db:migrate

Create production user admin  basically the same commands
 > heroku run rails c
 > User.last
 > User.last.update!(roles: "site_admin")

From the site, after trying to submit a blog it will throw an error.
    We're sorry, but something went wrong.
  If you are the application owner check the logs for more information.  

  No Topics created yet...
from root
  > heroku logs-n 200

##### Here's how fix issue #####
>heroku run rails c

Cannot run more than 1 Free size dynos.
>heroku ps

Free dyno hours quota remaining this month: 999h 2m (99%)
For more information on dyno sleeping and how to upgrade, see:
https://devcenter.heroku.com/articles/dyno-sleeping

=== run: one-off processes (1)
run.6824 (Free): up 2018/02/22 13:51:06 -0600 (~ 17m ago): rails c

=== web (Free): bin/rails server -p $PORT -e $RAILS_ENV (1)
web.1: up 2018/02/22 14:07:35 -0600 (~ 49s ago)

>heroku ps:stop run.6824

Stopping run.6824 dyno on ⬢ sitename... done

>heroku run rails c

=====use this to start heroku rails c====
$echo 'puts 1; exit' | heroku run rails c

open from browser
from app folder
>heroku open


















..
