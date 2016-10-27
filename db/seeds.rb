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
