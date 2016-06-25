require 'spec_helper'

describe User do

      it { should respond_to(:feed) }
      it { should respond_to(:relationships) }

      describe "micropost associations" do

        before { @user.save }
        let!(:older_micropost) do
          FactoryGirl.create(:micropost, user: @user, created_at: 1.day.ago)
        end
        let!(:newer_micropost) do
          FactoryGirl.create(:micropost, user: @user, created_at: 1.hour.ago)
        end

            it "should destroy associated microposts" do
          microposts = @user.microposts.to_a
          @user.destroy
          expect(microposts).not_to be_empty
          microposts.each do |micropost|
            expect(Micropost.where(id: micropost.id)).to be_empty
          end
        end
      end
end