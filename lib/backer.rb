require "pry"
class Backer
attr_reader :name
    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        backed_project = ProjectBacker.all.select {|project| project.backer == self}
        backed_project.map {|x| x.project}   #returns an array of projects associated with this Backer instance
    end
end