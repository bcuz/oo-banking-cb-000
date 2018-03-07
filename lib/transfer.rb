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
    true
  end
end
