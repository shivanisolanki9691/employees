class Subject < ApplicationRecord
  belongs_to :student
  has_one_attached :image

  validates :name, :sub_type, presence: true
  validates :student_id, uniqueness:true , presence:true
end
