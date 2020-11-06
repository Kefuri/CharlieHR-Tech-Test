require 'date'

class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth  

  end

  def age
    today = Date.today
    birthdate = Date.new(today.year, @date_of_birth.month, @date_of_birth.day)
    year_difference = today.year - @date_of_birth.year
    return year_difference - 1 if birthdate > today
    return year_difference
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

tests = [
  Date.new(1986, 1, 1),
  Date.new(1988, Date.today.month, Date.today.day),
  Date.new(1998, 12, 30),
]

puts "====== ages ======"
tests.each do |date|
  puts "#{date} => #{User.new('Test', date).age}"
end

puts "====== birthdays ======"
tests.each do |date|
  puts "#{date} => #{User.new('Test', date).next_birthday}"
end