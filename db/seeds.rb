Question.create(
  question: "Briefly describe what your organization does. What product(s) and/or services(s) does your nonprofit offer?"
)

Question.create(
  question: "List the social issues your nonprofit addresses."
)

Question.create(
  question: "Why do you believe that your nonprofit can make a meaningful impact in addressing the issues identified above?"
)

Question.create(
  question: "What differentiates you from other organizations working to address the same issues?"
)

Question.create(
  question: "What demographic does your nonprofit serve?"
)

Question.create(
  question: "How do you measure the impact of your nonprofit? Please share any relevant statistics."
)

Question.create(
  question: "What are the top 3 strategic goals for your nonprofit in the coming year?"
)

Question.create(
  question: "What are your organization's sources of revenue?"
)

Question.create(
  question: "How many full time (FTE equivalent) employees do you employ?"
)

Question.create(
  question: "What is your current Elevator Pitch?"
)

Question.create(
  question: "How would your organization benefit from participating in the fast pitch?"
)

Question.create(
  question: "What types of services (broadly speaking) does your organization provide?"
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

Answer.create(user_id: 1, question_id: 1, answer: "1bark bark bark")
Answer.create(user_id: 1, question_id: 2, answer: "b2ark bark bark")
Answer.create(user_id: 1, question_id: 3, answer: "ba3rk bark bark")
Answer.create(user_id: 1, question_id: 4, answer: "bar4k bark bark")
Answer.create(user_id: 1, question_id: 5, answer: "bark5 bark bark")
Answer.create(user_id: 1, question_id: 6, answer: "bark 6bark bark")
Answer.create(user_id: 1, question_id: 7, answer: "bark b7ark bark")
Answer.create(user_id: 1, question_id: 8, answer: "bark bar8k bark")
Answer.create(user_id: 1, question_id: 9, answer: "bark bark9 bark")
Answer.create(user_id: 1, question_id: 10, answer: "bark bark10 bark")

Answer.create(user_id: 2, question_id: 1, answer: "1meow meow meow")
Answer.create(user_id: 2, question_id: 2, answer: "m2eow meow meow")
Answer.create(user_id: 2, question_id: 3, answer: "me3ow meow meow")
Answer.create(user_id: 2, question_id: 4, answer: "meo4w meow meow")
Answer.create(user_id: 2, question_id: 5, answer: "meow5 meow meow")
Answer.create(user_id: 2, question_id: 6, answer: "meow 6meow meow")
Answer.create(user_id: 2, question_id: 7, answer: "meow m7eow meow")
Answer.create(user_id: 2, question_id: 8, answer: "meow me8ow meow")
Answer.create(user_id: 2, question_id: 9, answer: "meow meo9w meow")
Answer.create(user_id: 2, question_id: 10, answer: "meow meo10w meow")

Answer.create(user_id: 3, question_id: 1, answer: "1chirp chirp chirp")
Answer.create(user_id: 3, question_id: 2, answer: "2chirp chirp chirp")
Answer.create(user_id: 3, question_id: 3, answer: "3chirp chirp chirp")
Answer.create(user_id: 3, question_id: 4, answer: "4chirp chirp chirp")
Answer.create(user_id: 3, question_id: 5, answer: "c5hirp chirp chirp")
Answer.create(user_id: 3, question_id: 6, answer: "ch6irp chirp chirp")
Answer.create(user_id: 3, question_id: 7, answer: "chi7rp chirp chirp")
Answer.create(user_id: 3, question_id: 8, answer: "chir8p chirp chirp")
Answer.create(user_id: 3, question_id: 9, answer: "chirp9 chirp chirp")
Answer.create(user_id: 3, question_id: 10, answer: "chirp10 chirp chirp")
