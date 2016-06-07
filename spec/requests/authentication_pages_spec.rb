require 'rails_helper'

=begin
RSpec.describe "AuthenticationPages", type: :request do
  describe "GET /authentication_pages" do
    it "works! (now write some real specs)" do
      get authentication_pages_index_path
      expect(response).to have_http_status(200)
    end
  end
end

=end

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end
end