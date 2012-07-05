class Spinner

  attr_reader :number

  def initialize
    spin
  end

  def spin
    @number = rand(1..6)
  end

end
