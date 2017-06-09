class BankAccount
	@@bankAccounts = 0
	attr_reader :checking, :savings

	def initialize
		@checking = 0
		@savings = 0 
		@@bankAccounts += 1
		@interest_rate = 0.01
		@account_number = account_number
	end
	def user_account
		puts account_number
		self
	end
	def checkingBalance
		puts "checking account balance is #{@checking}" 
		self
	end
	def savingsBalance
		puts "savings account balance is #{savings}" 
		self
	end
	def deposit_checking(a)
		@deposit = a
		@checking += @deposit
		self
	end
	def deposit_savings(b)
		@deposit = b
		@savings += @deposit
		self
	end
	def withdraw_checking(c)
		if @checking > 0 && @checking > c
			@checking -= c
		else
			puts "insufficient funds to complete this transaction"
		end
		self				
	end
	def withdraw_savings(d)
		if @savings > 0 && @savings > d
		@savings -= d
		else
			puts "insufficient funds to complete this transaction"
		end
		self
	end
	def account_information
		puts "checking account: #{@checking}"
		puts "savings account: #{@savings}"
		puts "total money: #{@checking + @savings}"
		puts "interest rate: #{interest_rate}"
		puts "account number: #{@account_number}"
		self
	end
	def no_of_accounts
		puts "total number of bank account is #{@@bankAccounts}"
	end

	
	private
	
	def account_number
		rand(10000000)
	end
	attr_accessor :interest_rate
end
kevin = BankAccount.new
Edwin = BankAccount.new
levin = BankAccount.new
kevin.deposit_savings(2000).deposit_checking(9000).withdraw_savings(3000).savingsBalance.account_information
# Edwin.user_account.deposit_checking(4000).checkingBalance
# levin.no_of_accounts