class Gym
  attr_reader :name

  @@gyms = []

  def initialize(name)
    @name = name
    @@gyms << self
  end

  def self.all
    @@gyms
  end

  def memberships
    Membership.all.select {|x| x.gym == self }
  end

  def lifters
    self.memberships.map {|x| x.lifter }
  end

  def name_of_all_lifters
    self.lifters.map {|x| x.name }.uniq
  end

  def lift_total
    self.lifters.map {|x| x.lift_total}.sum
  end
end
