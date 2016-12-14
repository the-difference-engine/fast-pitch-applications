class Sector < ApplicationRecord
  has_many :applicant_sectors
  has_many :applicants, through: :applicant_sectors
end
