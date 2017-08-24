# == Schema Information
#
# Table name: messages
#
#  id      :integer          not null, primary key
#  from_id :integer          not null
#  to_id   :integer          not null
#  subject :string           not null
#  body    :text
#

require 'rails_helper'

RSpec.describe Message, type: :model do
  
   describe '.new' do
       
        it 'instantiates a new message object' do
            from_user = User.first
            to_user = User.second
          
            m = Message.new()
            
            m.from_id = from_user.id
            m.to_id = to_user.id
            m.subject='test'
            m.body = 'test body'

            m.save!
          
            expect(m.is_a?(Message)).to be true
            expect(m.from_id).to eql(from_user.id)
            expect(m.to_id).to eql(to_user.id)
            expect(m.subject).to eql('test')
              
        end
        
        # it 'validate message receiver and sender' do
            
        #     from_user = User.first
        #     to_user = User.second
          
        #     m = Message.new()
            
        #     m.from_id = from_user.id
        #     m.to_id = to_user.id
        #     m.subject='test'
        #     m.body = 'test body'

        #     m.save!
          
        #     expect(m.is_a?(Message)).to be true
        #     expect(m.from_id).to eql(from_user.id)
        #     expect(m.to_id).to eql(to_user.id)
        #     expect(m.subject).to eql('test')
              
        # end
    
  end
  
end
