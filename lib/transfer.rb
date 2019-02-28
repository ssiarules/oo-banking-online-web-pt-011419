class Transfer

  attr_accessor :amount, :sender, :receiver

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
  end

end
