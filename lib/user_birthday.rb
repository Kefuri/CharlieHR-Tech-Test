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
    return Date.today()

  end
end