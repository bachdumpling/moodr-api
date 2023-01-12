# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Users
users = [
  { user_id: 1, username: "bachle", age: 20, firstname: "Bach", lastname: "Le", email: "bach@example.com", password: "1" },
  { user_id: 2, username: "alice456", age: 25, firstname: "Alice", lastname: "Smith", email: "alice@example.com", password: "1" },
]

users.each do |user|
  User.create(user)
end

#Questions
questions = [
  {
    user_id: 1,
    question_1: "Is there any event affecting your mood today?",
    answer_1: "Yes",
    question_2: "How does this event affect your thoughts and behavior?",
    answer_2: "Positive",
    question_3: "Mood Scale",
    answer_3: "5",
  },
  {
    user_id: 2,
    question_1: "Is there any event affecting your mood today?",
    answer_1: "No",
    question_2: "How does this event affect your thoughts and behavior?",
    answer_2: "Negative",
    question_3: "Mood Scale",
    answer_3: "1",
  },
]

questions.each do |question|
  Question.create(question)
end

results = Result.create([
  {
    user_id: 1,
    emoji: "😁",
    mood: "happy",
  },
  {
    user_id: 2,
    emoji: "🙂",
    mood: "pleased",
  },
])

vitals = Vital.create([
  { user_id: 1, heart_rate: 80.0, wrist_temperature: 98.6 },
  { user_id: 2, heart_rate: 72.0, wrist_temperature: 97.8 },
])

# vitals.each do |vital|
#   Vital.create(vital)
# end