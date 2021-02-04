# > Directions
# Given this nested Hash:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
male_age = 0
munsters.each {|name, stats| male_age += stats["age"] if stats["gender"] == "male"}
puts male_age == 444