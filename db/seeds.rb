Message.delete_all
User.delete_all
User.create!(email: 'bob@aol.com', password: 'pass1234')
User.create!(email: 'sam@aol.com', password: 'pass1234', color: '#00FFFF', photo: 'https://cdn0.iconfinder.com/data/icons/avatars-6/500/Avatar_boy_man_people_account_client_male_person_user_work_sport_beard_team_glasses-512.png')
User.create!(email: 'sue@aol.com', password: 'pass1234', color: '#FF00FF', photo: 'https://cdn.vectorstock.com/i/thumb-large/04/40/4340440.jpg')
