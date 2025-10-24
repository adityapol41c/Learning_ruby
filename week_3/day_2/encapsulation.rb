class BankAccount
  def initialize(owner, initial_balance = 0)
    @owner = owner
    @balance = initial_balance
    @transaction_history = []
  end

  public
  def deposit(amount)
    if amount > 0
      @balance += amount
      log_transaction("Deposit", amount)
      "Deposited $#{amount}. New balance: $#{@balance}"
    else
      "Invalid deposit amount"
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      log_transaction("Withdrawal", amount)
      "Withdrew $#{amount}. New balance: $#{@balance}"
    else
      "Invalid withdrawal amount"
    end
  end

  def balance
    @balance
  end

  def account_summary
    "Owner: #{@owner}, Balance: $#{@balance}"
  end

  protected
  def transfer_to(other_account, amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      other_account.receive_transfer(amount)
      log_transaction("Transfer to #{other_account.instance_variable_get(:@owner)}", amount)
      "Transferred $#{amount} to #{other_account.instance_variable_get(:@owner)}"
    else
      "Transfer failed"
    end
  end

  def receive_transfer(amount)
    @balance += amount
    log_transaction("Transfer received", amount)
  end

  private
  def log_transaction(type, amount)
    @transaction_history << {
      type: type,
      amount: amount,
      balance: @balance,
      timestamp: Time.now
    }
  end

  def transaction_history
    @transaction_history
  end
end

account1 = BankAccount.new("aditya", 1000)
account2 = BankAccount.new("adi", 500)

puts account1.deposit(200)
puts account1.withdraw(150)
puts account1.account_summary
puts account2.account_summary

# below will give error (protected method)
# puts account1.transfer_to(account2, 100)