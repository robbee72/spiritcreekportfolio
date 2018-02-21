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

 > Topic.create!(title: "Ruby of Rails", percent_utilized: 65)

 ** Remember " create! " forces change 
