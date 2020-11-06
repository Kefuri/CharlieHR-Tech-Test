require 'user_birthday'

describe User do
  context '#next_birthday' do

    it 'should return a date object' do
      date = Date.new(1986, 1, 1)
      user = User.new("Test 1", date)
      expect(user.next_birthday).to be_a(Date)
    end

    it 'should return a date with the current year' do
      birthdate = Date.new(1986, 12, 12)
      date_today = Date.new(2020, 11, 6)
      user = User.new("Test 1", birthdate)
      allow(Date).to receive(:today).and_return(date_today)
      expect(user.next_birthday.year).to eq(date_today.year)
    end

    it "should return a date with user's birth day, month and current year" do
      birthdate = Date.new(1986, 12, 12)
      date_today = Date.new(2020, 11, 6)
      user = User.new("Test 1", birthdate)
      allow(Date).to receive(:today).and_return(date_today)
      expect(user.next_birthday.month).to eq(12)
      expect(user.next_birthday.day).to eq(12)
    end

    it "should return a date with next year if the birth month has passed" do
      birthdate = Date.new(1999, 9, 10)
      date_today = Date.new(2020, 10, 10)
      user = User.new("Test 1", birthdate)
      allow(Date).to receive(:today).and_return(date_today)
      expect(user.next_birthday.year).to eq(2021)
    end
    it "should return a date w/ next year if months match & date has passed" do
      birthdate = Date.new(1999, 10, 10)
      date_today = Date.new(2020, 10, 19)
      user = User.new("Test 1", birthdate)
      allow(Date).to receive(:today).and_return(date_today)
      expect(user.next_birthday.year).to eq(2021)
    end
  end

  context '#age' do
    it "should return an integer" do
      birthdate = Date.new(1999, 10, 10)
      user = User.new("Test 1", birthdate)
      expect(user.age).to be_an(Integer)
    end
  end
end