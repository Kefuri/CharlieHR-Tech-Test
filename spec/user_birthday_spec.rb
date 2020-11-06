require 'user_birthday'

describe User do
  context '#next_birthday' do
    it 'should return a date object' do
      date = Date.new(1986, 1, 1)
      user = User.new("Test 1", date)
      expect(user.next_birthday).to be_a(Date)
    end
  end
end