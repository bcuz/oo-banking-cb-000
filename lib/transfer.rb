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
    # this doesnt really make sense like dis
    @sender.valid?
    @receiver.valid?
  end

  def execute_transaction
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"

  end
end
