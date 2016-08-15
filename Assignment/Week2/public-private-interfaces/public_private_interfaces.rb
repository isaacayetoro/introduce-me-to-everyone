# Place your solutions here

class BankAccount
	attr_accessor  :type
	attr_reader :acct_number, :customer_name


	def initialize (customer_name,type,acct_number)
		@customer_name = customer_name
		@type = type
		@acct_number = acct_number


	end
	def to_s
		@acct_number= @acct_number.gsub(/\d{3}-\d{3}-(\d{4})/,'XXX-XXX-\1')
		"My account information is #{@customer_name} - #{@type} account number : #{hide}" 
	end

 private
	def hide
		@acct_number= @acct_number.gsub(/\d{3}-\d{3}-(\d{4})/,'XXX-XXX-\1')
	end

	

end

	my_acct = BankAccount.new("Junipero", "Saving", "347-923-2394" )
	#str = "My account information is #{my_acct}"
	p my_acct.to_s
	

