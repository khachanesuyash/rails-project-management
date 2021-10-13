require 'rails_helper.rb'


RSpec.describe "Task Features" do
    before do
        @user = FactoryBot.create(:user)
        login_as @user
        @project = FactoryBot.create(:project, user_id: @user.id)
        @phase = FactoryBot.create(:phase)
        task = FactoryBot.create(:task)
    end

    describe 'Create' do
        it 'creates a project' do
            visit("/projects/#{@project.id}/tasks")
            project = FactoryBot.create(:task)
            expect(page).to have_content("Test Task")
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
