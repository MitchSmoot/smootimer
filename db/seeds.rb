# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |solve|
  Solve.create!(
  user: "Mitch",
  event: "3x3",
  puzzle: "M3",
  solve_time: (17 + rand(0.00..17.00)),
  solve_date: Date.today,
  note: "Blah",
  scramble: "R U' R' U"
  )
  puts "Solve created! time: #{Solve.last.solve_time}"
end

  Solve.create!(
  user: "Bob",
  event: "3x3",
  puzzle: "M3",
  solve_time: (17 + rand(0.00..17.00)),
  solve_date: Process.clock_gettime(Process::CLOCK_MONOTONIC),
  note: "Blah",
  scramble: "R U' R' U"
  )
  puts "Special solve created!"