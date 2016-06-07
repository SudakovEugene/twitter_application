require 'spec_helper'
require 'rails_helper'
require File.dirname(__FILE__) + '/../support/utilities'
#require File.dirname(__FILE__) + '/../../spec/factories'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end

  describe "profile page" do
    # Replace with code to make a user variable
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
end
