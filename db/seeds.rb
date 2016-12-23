  Question.create([{question_text: "Organization"},
  {question_text: "Application Contact"},
  {question_text: "Title"},
  {question_text: "Phone"},
  {question_text: "Email"},
  {question_text: "Address"},
  {question_text: "Proposed Participant"},
  {question_text: "Title"},
  {question_text: "Phone"},
  {question_text: "Email"},
  {question_text: "Date Organized"},
  {question_text: "Number of Full-Time Employees"},
  {question_text: "Number of Part-Time Employees"},
  {question_text: "Budget for current fiscal"},
  {question_text: "What are your current sources of funding (include percentages)?"},
  {question_text: "Do you have your 501c3?"},
  {question_text: "If not, do you have a fiscal agent?"},
  {question_text: "Name of fiscal agent (if applicable)"},
  {question_text: "Sector(s) your programs a"}, {question_text: "Br
    iefly describe what your organization does (Limit 300 words)"}
  (question_text: "What communities do you serve?")
  (question_text: "Who do you help (target population)?")
  (question_text: "How does your nonprofit make a meaningful impact (Limit 200 words)")
  (question_text: "How do you measure the impact of your nonprofit? Please share any relevant statistics.")
  (question_text: "What differentiates you from other organizations working to address the same issues? (Limit 300 words)")
  (question_text: "What are your organization's goals for the coming year (Limit 300 words)")
  (question_text: "What do you hope to gain from participating in Fast Pitch? (Limit 100 words)")
  (question_text: "What is the one thing you most want us to know about your organization (Limit 200 words)")


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

  Answer.create(applicant_id: 1, question_id: 1, answer_text: "1bark bark bark")
  Answer.create(applicant_id: 1, question_id: 2, answer_text: "b2ark bark bark")
  Answer.create(applicant_id: 1, question_id: 3, answer_text: "ba3rk bark bark")
  Answer.create(applicant_id: 1, question_id: 4, answer_text: "bar4k bark bark")
  Answer.create(applicant_id: 1, question_id: 5, answer_text: "bark5 bark bark")
  Answer.create(applicant_id: 1, question_id: 6, answer_text: "bark 6bark bark")
  Answer.create(applicant_id: 1, question_id: 7, answer_text: "bark b7ark bark")
  Answer.create(applicant_id: 1, question_id: 8, answer_text: "bark bar8k bark")
  Answer.create(applicant_id: 1, question_id: 9, answer_text: "bark bark9 bark")
  Answer.create(applicant_id: 1, question_id: 10, answer_text: "bark bark10 bark")

  Answer.create(applicant_id: 2, question_id: 1, answer_text: "1meow meow meow")
  Answer.create(applicant_id: 2, question_id: 2, answer_text: "m2eow meow meow")
  Answer.create(applicant_id: 2, question_id: 3, answer_text: "me3ow meow meow")
  Answer.create(applicant_id: 2, question_id: 4, answer_text: "meo4w meow meow")
  Answer.create(applicant_id: 2, question_id: 5, answer_text: "meow5 meow meow")
  Answer.create(applicant_id: 2, question_id: 6, answer_text: "meow 6meow meow")
  Answer.create(applicant_id: 2, question_id: 7, answer_text: "meow m7eow meow")
  Answer.create(applicant_id: 2, question_id: 8, answer_text: "meow me8ow meow")
  Answer.create(applicant_id: 2, question_id: 9, answer_text: "meow meo9w meow")
  Answer.create(applicant_id: 2, question_id: 10, answer_text: "meow meo10w meow")

  Answer.create(applicant_id: 3, question_id: 1, answer_text: "1chirp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 2, answer_text: "2chirp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 3, answer_text: "3chirp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 4, answer_text: "4chirp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 5, answer_text: "c5hirp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 6, answer_text: "ch6irp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 7, answer_text: "chi7rp chirp chirp")
  Answer.create(applicant_id: 3, question_id: 8, answer_text: "chir8p chirp chirp")
  Answer.create(applicant_id: 3, question_id: 9, answer_text: "chirp9 chirp chirp")
  Answer.create(applicant_id: 3, question_id: 10, answer_text: "chirp10 chirp chirp")
