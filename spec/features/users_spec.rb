require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'authenticated' do
    before(:each) do
      visit '/users/sign_in'
      fill_in 'user[email]', with: 'bob@aol.com'
      fill_in 'user[password]', with: 'pass1234'
      click_button 'Log in'
    end

    scenario 'change color and photo' do
      visit '/users/edit'
      fill_in 'user[color]', with: '#000000'
      fill_in 'user[photo]', with: 'http://image.jpg'
      fill_in 'user[current_password]', with: 'pass1234'
      click_button 'Update'
      visit '/users/edit'
      expect(find_field('user[color]').value).to eql('#000000')
      expect(find_field('user[photo]').value).to eql('http://image.jpg')
    end
  end
end
