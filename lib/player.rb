class Player
  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 10
  end

  def attacked
    @hp -= 10
  end

end
