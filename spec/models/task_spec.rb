require 'rails_helper.rb'
include Warden::Test::Helpers

RSpec.describe Task do
    before do
        @user = FactoryBot.create(:user)
        login_as @user
        project = FactoryBot.create(:project, user_id: @user.id)
        @phase = FactoryBot.create(:phase)
        task = FactoryBot.create(:task)
    end
    
    describe 'Phase and Priority' do
        it 'must be present' do
              
        end
    end
    
end
