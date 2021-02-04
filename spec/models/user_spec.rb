require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(username: "robot", password: "password")
  end

  describe "username" do  
    it "user should be be valid" do
      @user.username = nil
      expect(@user).not_to be_valid
    end
  
    it "username should be present" do
      @user.username = ""
      expect(@user).not_to be_valid
    end
  
    it "username should be unique" do
      @user.save
      @user2 = User.new(username: "robot")
      expect(@user2).not_to be_valid
    end
  
    it "username should not be case sensitive" do
      @user.save
      @user2 = User.new(username: "Robot")
      expect(@user2).not_to be_valid
    end
  
  
    it "username should longer than 3 char" do
      @user.username = "rr"
      expect(@user).not_to be_valid
    end
  
    it "username should shorter than 30 char" do
      @user.username = "r" * 31
      expect(@user).not_to be_valid
    end
  end
  

  describe "password" do
    it "password be be valid" do
      @user = User.new(username: "robot", password: nil )
      expect(@user).not_to be_valid
    end
  end
  


  # describe "when password doesn't match confirmation" do
  #   before { @user.password_confirmation = "mismatch" }
  #   it { should_not be_valid }
  # end

  # describe "with a password that's too short" do
  #   before { @user.password = @user.password_confirmation = "a" * 5 }
  #   it { should be_invalid }
  # end

  # describe "return value of authenticate method" do
  #   before { @user.save }
  #   let(:found_user) { User.find_by(email: @user.email) }



  #   describe "with invalid password" do
  #     let(:user_for_invalid_password) { found_user.authenticate("invalid") }

  #     it { should_not eq user_for_invalid_password }
  #     specify { expect(user_for_invalid_password).to be_false }
  #   end
  # end

end
