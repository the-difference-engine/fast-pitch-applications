<<<<<<< HEAD
=======
require 'pry'
>>>>>>> f9f1856409bf8147a38ee0b86372214513647374
def seed_database
  seed_questions
  seed_user
  seed_admin
  seed_answer
end

def seed_questions
  Question.destroy_all
  Question.create(question_text: "Organization")
  Question.create(question_text: "Application Contact")
  Question.create(question_text: "Title")
  Question.create(question_text: "Phone")
  Question.create(question_text: "Email")
  Question.create(question_text: "Address")
  Question.create(question_text: "Proposed Participant")
  Question.create(question_text: "Title")
  Question.create(question_text: "Phone")
  Question.create(question_text: "Email")
  Question.create(question_text: "Date Organized")
  Question.create(question_text: "Number of Full-Time Employees")
  Question.create(question_text: "Number of Part-Time Employees")
  Question.create(question_text: "Budget for current fiscal year")
  Question.create(question_text: "What are your current sources of funding (include percentages)?")
  Question.create(question_text: "Do you have your 501c3?")
  Question.create(question_text: "If not, do you have a fiscal agent?")
  Question.create(question_text: "Name of fiscal agent (if applicable)")
  Question.create(question_text: "Sector(s) your programs address")
  Question.create(question_text: "Briefly describe what your organization does (Limit 300 words)")
  Question.create(question_text: "What communities do you serve?")
  Question.create(question_text: "Who do you help (target population)?")
  Question.create(question_text: "How does your nonprofit make a meaningful impact (Limit 200 words)")
  Question.create(question_text: "How do you measure the impact of your nonprofit? Please share any relevant statistics.")
  Question.create(question_text: "What differentiates you from other organizations working to address the same issues? (Limit 300 words)")
  Question.create(question_text: "What are your organization's goals for the coming year (Limit 300 words)")
  Question.create(question_text: "What do you hope to gain from participating in Fast Pitch? (Limit 100 words)")
  Question.create(question_text: "What is the one thing you most want us to know about your organization (Limit 200 words)")
end

def seed_user
  User.destroy_all
  User.create(
    name: "Hope NY",
    contact_name: "Lebron James",
    email: "hopeny@example.com",
    phone_number: "(718)542-4213",
    tax_exempt: true
  )
<<<<<<< HEAD
=======

  User.create(
    name: "Greenpoint",
    contact_name: "Claudia McCormack",
    email: "claudia@example.com",
    phone_number: "(347) 123-4567",
    tax_exempt: true
  )

  User.create(
    name: "Brooklyn Charity",
    contact_name: "Mary South",
    email: "mary@example.com",
    phone_number: "(347) 123-4567",
    tax_exempt: true
  )
>>>>>>> f9f1856409bf8147a38ee0b86372214513647374
end

def seed_admin
  Admin.destroy_all
  Admin.create(
    name: "Harper Coven",
    email: "admin4@example.com",
    encrypted_password: "password",
    super_admin: false
  )

  Admin.create(
    name: "Summer Jones",
    email: "admin5@example.com",
    encrypted_password: "password",
    super_admin: true
  )

  Admin.create(
    name: "Henry Lee",
    email: "admin2@example.com",
    encrypted_password: "password",
    super_admin: true
  )

  Admin.create(
    name: "Eliza Day",
    email: "admin6@example.com",
    encrypted_password: "password",
    super_admin: false
  )
end

def seed_answer
  Answer.destroy_all
<<<<<<< HEAD
  Answer.create(user_id: 1, question_id: 1, answer_text: "1bark bark bark")
  Answer.create(user_id: 1, question_id: 2, answer_text: "b2ark bark bark")
  Answer.create(user_id: 1, question_id: 3, answer_text: "ba3rk bark bark")
  Answer.create(user_id: 1, question_id: 4, answer_text: "bar4k bark bark")
  Answer.create(user_id: 1, question_id: 5, answer_text: "bark5 bark bark")
  Answer.create(user_id: 1, question_id: 6, answer_text: "bark 6bark bark")
  Answer.create(user_id: 1, question_id: 7, answer_text: "bark b7ark bark")
  Answer.create(user_id: 1, question_id: 8, answer_text: "bark bar8k bark")
  Answer.create(user_id: 1, question_id: 9, answer_text: "bark bark9 bark")
  Answer.create(user_id: 1, question_id: 10, answer_text: "bark bark10 bark")

  Answer.create(user_id: 2, question_id: 1, answer_text: "1meow meow meow")
  Answer.create(user_id: 2, question_id: 2, answer_text: "m2eow meow meow")
  Answer.create(user_id: 2, question_id: 3, answer_text: "me3ow meow meow")
  Answer.create(user_id: 2, question_id: 4, answer_text: "meo4w meow meow")
  Answer.create(user_id: 2, question_id: 5, answer_text: "meow5 meow meow")
  Answer.create(user_id: 2, question_id: 6, answer_text: "meow 6meow meow")
  Answer.create(user_id: 2, question_id: 7, answer_text: "meow m7eow meow")
  Answer.create(user_id: 2, question_id: 8, answer_text: "meow me8ow meow")
  Answer.create(user_id: 2, question_id: 9, answer_text: "meow meo9w meow")
  Answer.create(user_id: 2, question_id: 10, answer_text: "meow meo10w meow")

  Answer.create(user_id: 3, question_id: 1, answer_text: "1chirp chirp chirp")
  Answer.create(user_id: 3, question_id: 2, answer_text: "2chirp chirp chirp")
  Answer.create(user_id: 3, question_id: 3, answer_text: "3chirp chirp chirp")
  Answer.create(user_id: 3, question_id: 4, answer_text: "4chirp chirp chirp")
  Answer.create(user_id: 3, question_id: 5, answer_text: "c5hirp chirp chirp")
  Answer.create(user_id: 3, question_id: 6, answer_text: "ch6irp chirp chirp")
  Answer.create(user_id: 3, question_id: 7, answer_text: "chi7rp chirp chirp")
  Answer.create(user_id: 3, question_id: 8, answer_text: "chir8p chirp chirp")
  Answer.create(user_id: 3, question_id: 9, answer_text: "chirp9 chirp chirp")
  Answer.create(user_id: 3, question_id: 10, answer_text: "chirp10 chirp chirp")
end

=======
  questions = Question.all

  user = User.first
  questions.each do |q|
  # binding.pry
    Answer.create(user_id: user.id, question_id: q.id, answer_text: Faker::StarWars.quote)
  end

  user = User.second
  questions.each do |q|
    Answer.create(user_id: user.id, question_id: q.id, answer_text: Faker::StarWars.quote)
  end

  user = User.third
  questions.each do |q|
    Answer.create(user_id: user.id, question_id: q.id, answer_text: Faker::StarWars.quote)
  end
end


>>>>>>> f9f1856409bf8147a38ee0b86372214513647374
seed_database
