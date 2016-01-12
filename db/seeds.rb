# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User.delete_all
 
  fiorina = User.create(username: "Fiorina", password_digest: "1234")
  trump = User.create(username: "Trump", password_digest: "1234")
  carson = User.create(username: "Carson", password_digest: "1234")
  clinton = User.create(username: "Clinton", password_digest: "1234")
  users = [fiorina, trump, carson, clinton]
  Profile.delete_all

  fiorina_profile = Profile.create(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", user_id: fiorina.id)
  trump_profile = Profile.create(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump", user_id: trump.id)
  carson_profile = Profile.create(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson", user_id: carson.id)
  clinton_profile = Profile.create(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", user_id: clinton.id)
	
  TodoList.delete_all
  	task_list = []
	inc = 0
	4.times do
		list = TodoList.create(list_name: "List", list_due_date: Date.today+1.year,user_id:users[inc].id )
		task_list << list
		inc +=1
	end

  TodoItem.delete_all
        list = []
  task_list.each do |task|
	  5.times do |x|
		x = TodoItem.create(due_date: Date.today + 1.year, title: "hihih", description: "dsdsds", completed: false, todo_list_id: task.id)	  
	  list << x
	  end	  
  end
  task_list

