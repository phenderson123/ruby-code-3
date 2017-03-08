class Customer

	attr_accessor :name, :location

	def initialize(name, location)
		@name = name
		@location = location
	end

end

class Account

	attr_reader :acct_number, :balance
	attr_accessor :customer, :acct_type

	def initialize(customer, balance, acct_number, acct_type)
		@customer = customer
		@balance = balance
		@acct_number = acct_number
		@acct_type = acct_type
	end

	def deposit
		puts "How much would you like to deposit?"
		print "$"
		amount = gets.chomp.to_f
		@balance += amount
		puts "Your new balance is $#{'%0.2f'%(@balance)}"
	end

	def withdrawal
		puts "How much would you like to withdraw today?"
		print "$"
		amount = gets.chomp.to_f
		#check if there are sufficient funds
		if @balance < amount
			#if not, charge overdraft fee of $25
			@balance -= (amount + 25)
		else
			@balance -= amount
		end
		puts "Your new balance is $#{'%0.2f'%(@balance)}"
	end

end