class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@lifters << self
  end

  def self.all
    @@lifters
  end

  def memberships
    Membership.all.select {|x| x.lifter == self}
  end

  def gyms
    self.memberships.map {|x| x.gym }
  end

  def average_lift_total
    @@lifters.map {|x| x.lift_total}.sum / @@lifters.count
  end

  def total_cost
    # self.gyms.map {|x| x.cost}.sum
    self.memberships.map {|x| x.cost }.sum
  end

  def signup(gym, cost)
    Membership.new(cost, self, gym)
  end


end
