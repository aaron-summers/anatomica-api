# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Category.destroy_all
# Question.destroy_all
# Option.destroy_all

Category.create([
    {serial: SecureRandom.hex(16).to_s, system: "General"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Skeletal"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Muscular"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Nervous"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Endocrine"},
    {serial: SecureRandom.hex(16).to_s, system: "Cardiovascular"}
])

Question.create([
    {content: "What is the study of the body's structure and how its components are assembled called?", category_id: 1, answer: "Anatomy", altAnswers: ["Physiology", "Pathophysiology", "Kinesiology", "Morphology"]},
    {content: "The brain is a part of which bodily system?", category_id: 1, answer: "Nervous System", altAnswers: ["Endocrine System", "Cardiovascular System", "Respiratory System", "Skeletal System"]},
    {content: "How many nucleotides in the DNA?", category_id: 1, answer: "Four", altAnswers: ["Seven", "Eight", "Five", "Three"]},
    {content: "Who discovered Penicillin?", category_id: 1, answer: "Alexander Fleming", altAnswers: ["Jonas Salk", "Edward Jenner", "Michiaki Takahashi", "Thomas Weller"]}
])

# Option.create([
#     {content: ["Physiology", "Pathophysiology", "Kinesiology", "Morphology"], question_id: Question.find_by(answer: "Anatomy").id},
#     {content: ["Endocrine System", "Cardiovascular System", "Respiratory System", "Skeletal System"], question_id: Question.find_by(answer: "Nervous System").id},
#     {content: ["Seven", "Eight", "Five", "Three"], question_id: Question.find_by(answer: "Four").id},
#     {content: ["Jonas Salk", "Edward Jenner", "Michiaki Takahashi", "Thomas Weller"], question_id: Question.find_by(answer: "Alexander Fleming").id}
# ])

# Quiz.create([
#     {serial: SecureRandom.hex(16), user_id: 1, category_id: 1}
# ])