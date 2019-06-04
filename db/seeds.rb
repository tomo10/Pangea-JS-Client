

thomas = User.create(username: 'Tomo', password: 'tomo')
jos = User.create(username: 'Jos_B', password: 'jos')

rhino = Project.create(name: 'Black Rhino Project', funding_required: 1000, image: 'na', amount_pledged: 500, user_id: 1)
elephant = Project.create(name: 'Elephant', funding_required: 4000, image: 'na', amount_pledged: 100, user_id: 2)
rainforest = Project.create(name: 'Rainforest Conservation', funding_required: 50000, image: 'na', amount_pledged: 1025, user_id: 1)

up1 = UserProject.create(user_id: 1, project_id: 1)
up2 = UserProject.create(user_id: 1, project_id: 2)
up3 = UserProject.create(user_id: 2, project_id: 3)


puts '------------------SEEDED------------------------------------'
puts '------------------SEEDED------------------------------------'