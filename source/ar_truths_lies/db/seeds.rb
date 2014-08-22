require_relative '../config/application'

module DatabaseSeeder

	def populate_tables
    Student.create(first_name: "test", last_name: "person")
	end

end

DatabaseSeeder.populate_tables


