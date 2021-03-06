class PeopleController < ApplicationController

	before_filter :set_today

	def index
		@person = Person.new
		@person.first_name = "Josh"
		@person.last_name = "Schultz"
		@person.save
		@count = Person.count
	end

	def count
		@count = 1000
	end

	def set_today
		@today = Date.today
	end

end