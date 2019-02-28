class Transfer

  attr_accessor :money, :sender, :receiver, :status, :amount

  def initialize(sender, receiver, money)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

  def valid?
      #binding.pry
     @status == "pending" && @amount > 0 ? true : false
     @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    unless status == "complete"
    sender.balance -= amount
    receiver.balance += amount
    self.status = "complete"
  end
    if sender.valid? == false
      self.status = "rejected"
       puts "Transaction rejected. Please check your account balance."
    end
  end
end
