class School

  attr_accessor :name
  attr_accessor :students

  def initialize(name)
    @name=name
    @students=[]
  end

  def enroll(student)
    @students << Student.new(student)
  end

  def state
    'MA'
  end

  def states
    ['MA','NY']
  end
end
