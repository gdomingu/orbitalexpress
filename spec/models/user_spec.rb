require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create(:user)
  end
  it "is created" do
    @user.save
    users = User.all
    expect(users).to include(@user)
  end
end
