class GrandParentClass
  def print_names
  end
end

class ParentClass < GrandParentClass
end

class ChildClass < ParentClass
end

child = ChildClass.new
child.print_names
