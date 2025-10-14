class BankAccount
  @@total_accounts = 0

  def self.total_accounts
    @@total_accounts
  end

  def initialize(account_holder, initial_balance = 0)
    @account_holder = account_holder
    @balance = initial_balance
    @account_number = generate_account_number
    @@total_accounts += 1
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
      "Deposited $#{amount}. New balance: $#{@balance}"
    else
      "Invalid deposit amount"
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      "Withdrew $#{amount}. New balance: $#{@balance}"
    else
      "Invalid withdrawal amount"
    end
  end

  def balance
    @balance
  end

  def account_info
    "Account #: #{@account_number}, Holder: #{@account_holder}, Balance: $#{@balance}"
  end

  private

  def generate_account_number
    rand(10**10).to_s.rjust(10, '0')
  end
end

account1 = BankAccount.new("John Doe", 1000)
account2 = BankAccount.new("Jane Smith", 500)

puts account1.account_info
puts account1.deposit(200)
puts account1.withdraw(150)
puts account1.withdraw(2000)  #will fail

puts "Total accounts created: #{BankAccount.total_accounts}"