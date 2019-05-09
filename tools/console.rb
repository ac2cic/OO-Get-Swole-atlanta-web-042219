# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lif1 = Lifter.new("jae", 80)
lif2 = Lifter.new("rak", 70)
lif3 = Lifter.new("jung", 30)

gym1 = Gym.new("atl")
gym2 = Gym.new("new")
gym3 = Gym.new("cali")

mem1 = Membership.new(100, lif1, gym1)
mem2 = Membership.new(80, lif2, gym2)
mem3 = Membership.new(50, lif3, gym3)
mem4 = Membership.new(10, lif1, gym2)
mem5 = Membership.new(30, lif3, gym1)

# jae.transfer_membership(gym2)

binding.pry

puts "Gains!"
