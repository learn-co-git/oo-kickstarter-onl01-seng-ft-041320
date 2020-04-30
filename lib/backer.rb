class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if @backed_projects << project && !(project.backers.include?(self))
    project.add_backer(self)
  end
end