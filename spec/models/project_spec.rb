require 'rails_helper.rb'

RSpec.describe Project do
    before do
        @user = FactoryBot.create(:user)
        @project = FactoryBot.create(:project, user_id: @user.id)
        login_as @user
    end
    
    describe "Validating" do
        describe "User" do
            it "must be present" do
                expect(@project).to be_valid
                @project.user_id = nil
                expect(@project).to_not be_valid 
            end
        end

        describe "Phase" do
            it "must be present" do
                expect(@project).to be_valid
                @project.phase = nil
                expect(@project).to_not be_valid 
            end
        end

        describe "Status" do
            it "must be present" do
                expect(@project).to be_valid
                @project.status = nil
                expect(@project).to_not be_valid 
            end
        end
    end



    
end
