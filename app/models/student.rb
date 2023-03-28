class Student < ApplicationRecord
	has_many :subjects
	validates :first_name, :last_name, presence: true
	validates :personal_email, presence: true , uniqueness: true
	validates :state, :country,  :pincode, :address_line_1, presence: true

	def name
		"#{first_name} #{last_name} #{middle_name}".strip
	end

	def full_address
		"#{state} #{country} #{pincode} #{address_line_1} #{address_line_2}".strip
	end
end