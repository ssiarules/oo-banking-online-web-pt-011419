class Transfer

  attr_accessor :money, :sender, :receiver

  def initialize(sender, receiver, money)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

end
