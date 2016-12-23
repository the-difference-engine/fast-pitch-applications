def seed_database
  seed_questions
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

seed_database

Sector.destroy_all

alcoholism_addiction = Sector.create(name: "Alcoholism, Addiction")
education = Sector.create(name: "Education")
elderly_care = Sector.create(name: "Elderly Care")
food = Sector.create(name: "Food")
health_medical = Sector.create(name: "Health Medical")
homelessness = Sector.create(name: "Homelessness")
job_programs = Sector.create(name: "Job programs")
mental_health = Sector.create(name: "Mental Health")
pregnancy_parenting = Sector.create(name: "Pregnancy parenting")
violence_abuse = Sector.create(name: "Violence_abuse")
