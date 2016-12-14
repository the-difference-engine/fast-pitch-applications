class ApplicantSector < ApplicationRecord
  belongs_to :applicant
  belongs_to :sector
end
