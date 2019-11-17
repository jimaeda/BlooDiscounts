require 'rails_helper'

RSpec.describe User, type: :model do
   before(:all) do
    DatabaseCleaner.start
   end

   after(:all) do
    DatabaseCleaner.clean
   end

  it 'is valid with valid attributes' do
    @user1 = create(:user)
 		expect(@user1).to be_valid
 	end
  
  it "has a unique email" do
    @user1 = create(:user)
    user2 = build(:user, first_name: "Bob", last_name: "Jooj")
    expect(user2).to_not be_valid
  end
  
  it "is not valid without a password" do 
    user2 = build(:user, password: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without an email" do
    user2 = build(:user, email: nil)
    expect(user2).to_not be_valid
  end

end
