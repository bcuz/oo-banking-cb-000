class Transfer
  # your code here

  attr_reader :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver = receiver
    @amount=amount
    @status = 'pending'
  end

  def valid?
    # sender will be an instance?
    @sender.valid? and @receiver.valid?

  end

  def execute_transaction
    # doesnt make sense that this would be valid for this test
    # p @sender.valid?
    if !@sender.valid?
      return "Transaction rejected. Please check your account balance."


    elsif @status != "complete"
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end

  end
end
