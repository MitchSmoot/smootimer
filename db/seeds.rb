# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do |solve|
#   Solve.create!(
#   user: "Mitch",
#   event: "3x3",
#   puzzle: "M3",
#   solve_time: (17 + rand(0.00..17.00)),
#   solve_date: Date.today,
#   note: "Blah",
#   scramble: "R U' R' U"
#   )
#   puts "Solve created! time: #{Solve.last.solve_time}"
# end

@test_user = User.create(
  email: "test@test.com",
  username: "test_user",
  password: "asdfasdf",
  password_confirmation: "asdfasdf"
  )
puts "User created!"

23.times do |single_solve|
  SingleSolve.create!(
    user_id: User.last.id,
    event: "3x3",
    solve_time: (20000 + rand(0..6000)),
    solve_date: Date.today
    )
  puts "Solve #{single_solve} created! time: #{SingleSolve.last.solve_time}"
end


