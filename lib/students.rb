class Students
  def all
    [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 22},
    ]
  end

  def average_age
    # ages = all.map do |person|
    #   person[:age]
    # end
    # ages.reduce(:+) / ages.count

    all.inject(0) { |sum, student| sum + student[:age]} / all.length
  end

  def name_string
    names = all.map do |person|
      person[:name]
    end
    names.join(" ")
  end

  def find_first_older_than(age)
   # all.select { |person| person[:age] > age}.first
  all.detect{ |student| student[:age] > age}
  end

  def any_older_than?(age)
    # if all.detect { |person| person[:age] > age }
    #   true
    # else
    #   false
    # end

    all.any? { |student| student[:age] > age}

  end

  def find_student(student_to_find)
    all.find { |person| person == student_to_find }


  end

  def student_present?(student_to_find)
    # if all.include?(student_to_find)
    #   return true
    # else
    #   return false
    # end

    all.include?(student_to_find)
  end

  def grouped_by_age
    hash = {}
    all.each do |person|
      hash[person[:age]] = hash[person[:age]] || []
      hash[person[:age]] = hash[person[:age]] << person[:name]
    end
    hash
  end


end