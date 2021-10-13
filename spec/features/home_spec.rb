require 'rails_helper'

RSpec.describe 'Home Page' do
    it 'displays the name of Project' do
        visit('/')
        expect(page).to have_content('Project Management App')
        click_link('Projects')
        expect(current_path).to eql('/users/sign_in')
    end
end