class Person < ActiveRecord::Base

	has_many :notes

	before_save :update_name

	scope :named, ->(name) { where("lower(first_name) = ?", name.downcase) }
	scope :named_darby, -> { where(last_name: "Darby") }

	def full_name
		"#{first_name} #{last_name}"
	end

	private

	def update_name
		self.name = self.full_name
	end

end