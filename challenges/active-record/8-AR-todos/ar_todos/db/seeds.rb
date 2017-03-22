require 'faker'


task = Todo.new({text: "mi tarea 1", state: false})
task.save

task_details = []
10.times do |t|
  task_details << {text: Faker::Book.title, state: [true,false].sample}  
  p task_details[t]
  task = Todo.new(task_details[t])
  task.save
end

