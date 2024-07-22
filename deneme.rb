class BankAccount
  attr_reader :account_number, :owner, :balance, :transactions

  @@account_count = 0

  def initialize(owner)
    @account_number = generate_account_number
    @owner = owner
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
      @transactions << { type: 'deposit', amount: amount, date: Time.now }
      puts "Deposited #{amount}. New balance is #{@balance}."
    else
      puts "Invalid deposit amount."
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      @transactions << { type: 'withdrawal', amount: amount, date: Time.now }
      puts "Withdrew #{amount}. New balance is #{@balance}."
    else
      puts "Invalid withdrawal amount or insufficient funds."
    end
  end

  def print_statement
    puts "Account Statement for #{owner} (Account No: #{account_number})"
    puts "-------------------------------------------------------"
    puts "Date                | Type       | Amount  | Balance"
    puts "-------------------------------------------------------"
    @transactions.each do |transaction|
      puts "#{transaction[:date].strftime('%Y-%m-%d %H:%M:%S')} | #{transaction[:type].ljust(10)} | #{transaction[:amount].to_s.ljust(7)} | #{calculate_balance(transaction[:date])}"
    end
    puts "-------------------------------------------------------"
    puts "Current Balance: #{@balance}"
  end

  private

  def generate_account_number
    @@account_count += 1
    "BA#{sprintf('%06d', @@account_count)}"
  end

  def calculate_balance(date)
    balance = 0
    @transactions.each do |transaction|
      if transaction[:date] <= date
        balance += transaction[:type] == 'deposit' ? transaction[:amount] : -transaction[:amount]
      end
    end
    balance
  end
end

# Kullanıcıdan değer alma işlemleri
puts "Welcome to the Bank!"
puts "Please enter your name to create an account:"
name = gets.chomp

account = BankAccount.new(name)
puts "Account created successfully! Your account number is #{account.account_number}."

loop do
  puts "\nWhat would you like to do?"
  puts "1. Deposit money"
  puts "2. Withdraw money"
  puts "3. Print statement"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter amount to deposit: "
    amount = gets.chomp.to_f
    account.deposit(amount)
  when 2
    print "Enter amount to withdraw: "
    amount = gets.chomp.to_f
    account.withdraw(amount)
  when 3
    account.print_statement
  when 4
    puts "Thank you for using the bank. Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end

