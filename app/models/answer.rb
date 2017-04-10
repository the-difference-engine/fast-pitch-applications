class Answer < ApplicationRecord
 belongs_to :applicant
 belongs_to :question
 has_many :applicant_sectors, through: :applicant

 def self.to_csv
   applicants = Applicant.all
   questions = Question.all
   sectors = Sector.all

   CSV.generate do |csv|
       headers = questions.map(&:question_text)
       headers << "Sectors"
        csv << headers
     applicants.each do |applicant|
         row = applicant.answers.order(:question_id).map(&:answer_text)
         sect = ApplicantSector.where(applicant_id: applicant.id)

         string = ""
         sect.each do |sect_list |
             sec = Sector.find_by(id: sect_list.sector_id)
              string = string + sec.name + ", "
         end
         row << string

       csv << row

     end
   end
 end
end
