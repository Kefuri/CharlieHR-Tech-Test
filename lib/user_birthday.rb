require 'date'

class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth  

  end

  def age

  end

  def next_birthday
    year = Date.today.year
    birthdate = @date_of_birth
    return Date.new(year, birthdate.month, birthdate.day)
  end
end