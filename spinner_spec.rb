require_relative './spinner'

describe Spinner do
  before do
    @spinner = Spinner.new
  end

  it 'should roll an integer greater than or equal to one' do
    @spinner.roll.should >= 1
  end

  it 'should roll an integer less than or equal to six' do
    @spinner.roll.should <= 6
  end

end
