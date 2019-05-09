class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@memberships = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@memberships << self
  end

  def self.all
    @@memberships
  end


end
