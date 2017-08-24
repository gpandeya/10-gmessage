class AddColorAndPhotosToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :color, :string, default: '#ffffff'
    add_column :users, :photo, :string, default: 'http://via.placeholder.com/150x150'
  end
end
