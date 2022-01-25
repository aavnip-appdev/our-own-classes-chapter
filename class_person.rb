# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

require "date"

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    return self.first_name + " " + self.last_name
  end

  def age
    birth_year = Date.parse(self.birthdate).year
    today = Date.today.year
    age_in_years = today - birth_year
    return age_in_years.to_i
  end

end

dev = Person.new
dev.first_name = "Aavni"
dev.last_name = "Piparsania"
dev.birthdate = "October 14, 1993"
p dev.full_name
p dev.age