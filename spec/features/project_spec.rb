require 'rails_helper.rb'


RSpec.describe "Project Features" do
    before do
        @user = FactoryBot.create(:user)
        login_as @user
        project = FactoryBot.create(:project, user_id: @user.id)
    end

    describe 'Create' do
        it 'creates a project' do
            visit("/projects")
            project = FactoryBot.create(:project, user_id: @user.id)
            expect(page).to have_content("Test Project")
        end
    end

    describe 'View The projects' do
        it 'lists all the projects' do
            visit("/")
            click_link("My Projects")
            expect(page).to have_content('Projects')
        end
    end

    
    

    
end
