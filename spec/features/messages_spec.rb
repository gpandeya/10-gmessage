require 'rails_helper'

RSpec.feature "Messages", type: :feature do
    # context 'authenticated' do
    #     before(:each) do
    #       visit '/users/sign_in'
    #       fill_in 'user[email]', with: 'bob@aol.com'
    #       fill_in 'user[password]', with: 'pass1234'
    #       click_button 'Log in'
    #     end
    # end
    
    
    scenario 'When the user views the /messages page' do
        
          visit '/users/sign_in'
          fill_in 'user[email]', with: 'bob@aol.com'
          fill_in 'user[password]', with: 'pass1234'
          click_button 'Log in'
          
        expect(page).to have_content('Inbox')
        click_link 'Inbox'
        expect(page).to have_text('My Received Messages')
         expect(page).to have_text('From')
    
  
  end
  
end
