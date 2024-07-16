# Optional
class Transaction
  def initialize(amount)
    # Initialize amount and date of transaction
    @amount = amount
    @date = Time.now
  end

  def to_s
    # Nicely print transaction info using Time#strftime.
    "#{@amount} euros on #{@date.strftime('%d/%m/%y at %I:%M%P')}"
  end
end
