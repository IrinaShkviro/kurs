require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup page" do
    before { visit signup_path }

    let(:submit) { "Create account" }

    describe "Invalid information" do
	it "shouldn't create user" do
	    expect { click_button submit }.not_to change(User, :count)
	end
    end

    describe "Valid information" do
	before do
	    fill_in "Name", with: "Example"
	    fill_in "Surname", with: "User"
	    fill_in "Group", with: 000
	    fill_in "Email", with: "user@example.com"
	    fill_in "Password", with: "foobar"
	    fill_in "Confirmation", with: "foobar"
	end
	it "should create user" do
	    expect { click_button submit }.to change(User, :count).by(1)
	end
    end

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end 
end
