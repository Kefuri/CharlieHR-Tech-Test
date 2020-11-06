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
    birthdate = Date.new(year, @date_of_birth.month, @date_of_birth.day)
    if Date.today < birthdate
      return birthdate
    elsif Date.today >= birthdate
      year += 1
      return Date.new(year, @date_of_birth.month, @date_of_birth.day)
    end
  end
end