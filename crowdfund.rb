require_relative "project"  

proj1 = Project.new("LMN", 500, 3000)
proj2= Project.new("XYZ", 25, 75)
proj3= Project.new("BRZ", 250, 750)

projects = GetFunded.new("VC-Friendly Start-Up")
puts projects.title
projects.add_project(proj1)
projects.add_project(proj2)
projects.add_project(proj3)
projects.request_funds


