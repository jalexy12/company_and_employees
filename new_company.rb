class Employee
	def initialize(name, hourly_wage, hours_worked)
		@name = name
		@hourly_wage = hourly_wage
		@hours_worked = hours_worked
	end

	def employees_weekly_salary
		@hourly_wage * @hours_worked
	end
end

user1 = Employee.new("Josh", 25, 90)
puts user1.employees_weekly_salary


