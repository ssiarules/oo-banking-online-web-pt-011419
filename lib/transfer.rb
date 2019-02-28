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
     @sender && @receiver 
  end

  
end
