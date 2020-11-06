require 'user_birthday'

describe User do
  context '#next_birthday' do

    it 'should return a date object' do
      date = Date.new(1986, 1, 1)
      user = User.new("Test 1", date)
      expect(user.next_birthday).to be_a(Date)
    end

    it 'should return a date with the current year' do
      birthdate = Date.new(1986, 10, 10)
      date_today = Date.new(2020, 10, 6)
      user = User.new("Test 1", birthdate)
      allow(Date).to receive(:today).and_return(date_today)
      expect(user.next_birthday.year).to eq(date_today.year)
    end
  end
end