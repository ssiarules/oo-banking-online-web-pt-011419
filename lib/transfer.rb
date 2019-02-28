class Transfer

  attr_accessor :money, :sender, :receiver

  def initialize(sender, receiver, money)
    @sender = sender
    @receiver = receiver
  end

end
