require_relative 'auditable'

class Spinner

  include Auditable

  attr_reader :number

  def initialize
    spin
  end

  def spin
    @number = rand(1..6)
    self.audit
  end

end
