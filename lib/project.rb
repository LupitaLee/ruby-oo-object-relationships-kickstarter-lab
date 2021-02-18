class Project
    attr_reader :title
        def initialize(title)
            @title = title 
        end

        def add_backer(backer)
            ProjectBacker.new(self,backer)
        end

        def backers
            backer1 = ProjectBacker.all.select {|backer| backer.project == self}
            backer1.map {|x| x.backer}
        end
    end