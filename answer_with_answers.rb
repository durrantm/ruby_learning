module Answer

  def answer_A1
    5
  end

  def answer_A2
    5.1
  end

  def answer_A3
    'john'
  end

  def answer_A4
    '1.2'
  end

  def answer_A5
    'this
has ended'
  end

  def answer_A6
    ['john','bill']
  end

  def answer_A7
    %w(MA CT NJ NY DE IN UT TX)
  end

  def answer_A8
    :john
  end

  def answer_A9
    {john: 10}
  end

  def answer_A10
    {john: 10,
     mary: 12}
  end

  def answer_B1(enumerable)
    enumerable.all? {|state| state == 'MA' }
  end

  def answer_B2(enumerable)
    enumerable.all? {|state_zip| state_zip.match '^MA'}
  end

  def answer_B3(enumerable)
    enumerable.any? {|num| num == 9}
  end

  def answer_B4(enumerable)
    enumerable.any? {|name| ['jane', 'fred', 'frank'].include? name.downcase}
  end

  def answer_B5(enumerable)
    enumerable.count
  end

  def answer_B6(enumerable)
    enumerable.cycle(2).to_a
  end

  def answer_B7(enumerable)
    enumerable.drop(2)
  end

  def answer_B8(enumerable)
    enumerable.drop_while {|num| num < 5}
  end

  def answer_B9(enumerable)
    result=[]
    enumerable.each_with_index{|animal,index| result << animal+"#{index+1}"}
    result
  end

  def answer_B10(enumerable)
    enumerable.find{|number| number > 5}
  end

  def answer_B11(enumerable)
    enumerable.find_all{|animal| animal.length == 3}.to_a
  end

  def answer_B12(enumerable)
    enumerable.find_all{|state| ['MA','NY','NJ'].include? state}
  end

  def answer_B13(enumerable)
    enumerable.find_all{|number| number % 3 == 0}.to_a
  end

  def answer_B14(enumerable)
    enumerable.first
  end

  def answer_B15(enumerable)
    enumerable.grep /A$/
  end

  def answer_B16(enumerable)
    enumerable.include?(9)
  end

  def answer_B17(enumerable)
    enumerable.inject(:+)
  end

  def answer_B18(enumerable)
    enumerable.inject(0){|sum, i| sum + (i * i)}
  end

  def answer_B19(enumerable)
    enumerable.map {|number| number * 2}
  end

  def answer_B20(enumerable)
    enumerable.map {|number| number == 617}
  end

  def answer_B21(enumerable)
    enumerable.max
  end

  def answer_B22(enumerable)
    enumerable.max_by {|word| word.length}
  end

  def answer_B23(enumerable)
    enumerable.min
  end

  def answer_B24(enumerable)
    enumerable.minmax
  end

  def answer_B25(enumerable)
    enumerable.none? {|code| code == 799}
  end

  def answer_B26(enumerable)
    enumerable.one? {|code| code == 199}
  end

  def answer_B27(enumerable)
    enumerable.reduce(:+)
  end

  def answer_B28(enumerable)
    enumerable.reduce(0){|num, i| num + i*i}
  end

  def answer_B29(enumerable)
    enumerable.select{|num| num % 3 == 0}
  end

  def answer_B30(enumerable)
    enumerable.sort
  end

  def answer_B31(enumerable)
    enumerable.sort_by{|word| word.length}
  end

  def answer_B32
    require_relative 'school'
    School.new('mit')
  end

  def answer_B33
    require_relative 'school'
    School.new('mit')
  end

  def answer_B34
    require_relative 'student'
    Student
  end

  def answer_B35
    require_relative 'school'
    School.new('mit').state
  end

  def answer_B36
    require_relative 'school'
    School.new('mit').state
    School.new('mit').states
  end

  def answer_B37
    require_relative 'school'
    School.new('mit').state
    school=School.new('MIT')
    school.enroll('bob')
    school.enroll('fred')
    School.new('mit').states.count
  end

  def answer_B38
    require_relative 'school'
    require_relative 'student'
    School.new('mit').state
    School.new('mit').state
    schools=[]
    schools << mit = School.new('MIT')
    schools << harvard = School.new('HARVARD')
    mit.enroll('bob')
    mit.enroll('fred')
    harvard.enroll('fred')
    fred_schools=[]
    printf "\nFred's Schools: "
    school_list=''
    schools.each do |school|
      school.students.each do |student|
        if student.name == 'fred' then
          school_list += (school.name + ', ')
        end
      end
    end
    school_list.chomp!(', ')
  end
end
