Question.create(
  question_text: "Briefly describe what your organization does. What product(s) and/or services(s) does your nonprofit offer?"
)

Question.create(
  question_text: "List the social issues your nonprofit addresses."
)

Question.create(
  question_text: "Why do you believe that your nonprofit can make a meaningful impact in addressing the issues identified above?"
)

Question.create(
  question_text: "What differentiates you from other organizations working to address the same issues?"
)

Question.create(
  question_text: "What demographic does your nonprofit serve?"
)

Question.create(
  question_text: "How do you measure the impact of your nonprofit? Please share any relevant statistics."
)

Question.create(
  question_text: "What are the top 3 strategic goals for your nonprofit in the coming year?"
)

Question.create(
  question_text: "What are your organization's sources of revenue?"
)

Question.create(
  question_text: "How many full time (FTE equivalent) employees do you employ?"
)

Question.create(
  question_text: "What is your current Elevator Pitch?"
)

Question.create(
  question_text: "How would your organization benefit from participating in the fast pitch?"
)

Question.create(
  question_text: "What types of services (broadly speaking) does your organization provide?"
)

User.create(
  name: "Hope NY",
  contact_name: "Lebron James",
  email: "hopeny@example.com",
  phone_number: "(718)542-4213",
  tax_exempt: true
)

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
