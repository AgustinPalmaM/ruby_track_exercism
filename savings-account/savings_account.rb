module SavingsAccount
  def self.interest_rate(balance)
    case 
    when balance.negative? then -3.213
    when balance < 1000 then 0.5
    when balance < 5000 then 1.621
    when balance >= 5000 then 2.475
    end
  end

  def self.annual_balance_update(balance)
    if balance.negative?
      balance + balance * interest_rate(balance) / 100 * -1
    else
      balance + balance * interest_rate(balance) / 100
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    iteracion = 0 
    while current_balance <= desired_balance
      current_balance = annual_balance_update(current_balance)
      iteracion += 1
    end
    iteracion
  end
end
