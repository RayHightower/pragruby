class Spinner

  attr_reader :number

  def spin
    @number = rand(1..6)
  end

end
