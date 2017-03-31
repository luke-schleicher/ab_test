NUM_EMPLOYEES = 10

puts "deleting employees"
Employee.destroy_all

NUM_EMPLOYEES.times do |i|
  Employee.create({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: "email#{i}@gmail.com",
      password: "password",
      password_confirmation: "password",
      weight: rand(90..320),
      hdl: rand(20..80),
      ldl: rand(80..200),
      glucose: rand(50..350),
      diastolic: rand(60..120),
      systolic: rand(100..200)
    })
  puts "employee ##{i} created"
end

puts "employees created"