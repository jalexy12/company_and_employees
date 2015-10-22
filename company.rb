# Employees
# Building
# Payroll
# Earnings
# Schedule

class Company
	def initialize(building_number)
		@company_employees = []
		@building_number = building_number
	end	

	def add_employee(employee)
		@company_employees.push(employee)
	end

	def pay_employees 
		# total = 0
		# @company_employees.each do | employee |
		# 	total += employee.weekly_earnings
		# 	puts "#{employee.name} made: #{employee.weekly_earnings}"
		# end
		# total	
		total = @company_employees.reduce(0) do | counter, employee |
			# 0			, employee 1.weekly_earnings
			# employee 1, employee 2
			# employee 2, employee 3
			# employee 3, employee 4
			counter + employee.weekly_earnings
		end
	end
end

# Salary
# Vacation
# Name 

class Employee
	attr_accessor(:name, :weekly_salary)
	
	def initialize(name, hourly_salary, hours_worked)
		@name = name
		@hourly_salary = hourly_salary
		@hours_worked = hours_worked
	end

	def name_and_salary
		puts "Name: #{@name} Salary: #{@hourly_salary}"
	end

	# def weekly_earnings
	# 	@hours_worked * @hourly_salary
	# end
end


user1 = Employee.new("Josh", 100)
user2 = Employee.new("Phillip", 400, 25)
user3 = Employee.new("Evelyn", 60, 70)
ironhack = Company.new("120 SW 8th ST")

ironhack.add_employee(user1)
ironhack.add_employee(user2)
ironhack.add_employee(user3)
puts ironhack.pay_employees * 0.82


