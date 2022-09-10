# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Lesson.destroy_all
Course.destroy_all

puts "Seeding DB..."

course = Course.create(name: "Intro à programação", teacher: "Danilo Kim", description: "Fundamentos da programação")

lesson_1 = Lesson.create!(name: "Git 101", description: "Introdução ao control de versões", video_link: "https://youtu.be/USjZcfj8yxE", course: course)

LessonQuestion.create!(order: 1, question: "Descreva o funcionamento do comando git add", lesson: lesson_1)

lesson_2 = Lesson.create!(name: "Data Structures", description: "Introdução às Estruturas de dados", video_link: "https://youtu.be/USjZcfj8yxE", course: course)

LessonQuestion.create!(order: 1, question: "O que são estruturas de dados e para que servem?", lesson: lesson_2)

lesson_3 = Lesson.create!(name: "Introdução ao Python", description: "Introdução à linguagem Python", video_link: "https://youtu.be/USjZcfj8yxE", course: course)

LessonQuestion.create!(order: 1, question: "Quais às características de uma linguagem de alto nível?", lesson: lesson_3)

puts "Done!"