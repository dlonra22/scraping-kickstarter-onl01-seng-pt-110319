require 'nokogiri'
require 'pry'
# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# project.css("p.bbcard_blurb").text
#project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
#project.css("span.location-name").text
def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
  projects = {}
  kickstarter.css("li.project.grid_4").each do |project|
    title = 
    projects[project] = {}
  binding.pry
  end
  projects
end
create_project_hash