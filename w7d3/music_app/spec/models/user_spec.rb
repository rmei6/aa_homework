require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest)}
  it { should validate_length_of(:password).is_at_least(6)}

  subject(:user) do
    User.new(email: "example@email.com", password: "testingthis")
  end

  describe "#is_password?" do
    it "verifies if the password is correct" do
      expect(user.is_password?("testingthis")).to be true
    end
  end

  describe "#reset_session_token!" do
    it "resets the session token" do
      token = user.session_token
      user.reset_session_token!
      expect(user.session_token).to_not eq(token)
    end

    it "should call 'save'" do
      expect(user).to receive(:save)
      user.reset_session_token!
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credentials" do
    it "returns the correct user when given the correct credentials" do
      expect(User.find_by_credentials(
        "example@email.com", "testingthis")).to eq(user)
    end

    it "return nil when given invalid credentials" do
      expect(User.find_by_credentials(
        "no_email_given", "no_password_given")).to eq(nil)
    end
  end
end
