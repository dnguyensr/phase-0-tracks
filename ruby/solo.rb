#generic ironman/gundam toy class
#avoid trademarked names
#initialize
#long initialization sequence
#prompt for colors, toy, missile, lasers
#weapons: lasers, missiles
#sounds and text for each weapon, incoporate color or qty


class Bipedalmechnicalwarmachine
  attr_reader :toycolor
  attr_accessor :missileqty, :lasercolor

  def initialize(toycolor, lasercolor, missileqty)
    @toycolor = toycolor
    @lasercolor = lasercolor
    @missileqty = missileqty
    puts "Initializing Bipedal Mechanical War Machine Launching Sequence..."
    puts "...war machine painting in progress..."
    puts "...missiles being retrofitted..."
    puts "...laser colors being modified..."
    puts "User Customizations Complete"
    puts "Operating System BPMWC Initializition Complete"
  end

  def lasers
    puts "A #{@lasercolor} light is emitted from the head of the #{@toycolor} Bipedal Mechanical War Machine and it is blinding!"
    puts "The mysterious light proceeds to illuminate the immediate area in front of it."
    puts "*PEW PEW*"
    puts "After two seconds of intense lighting, the \"laser\" shuts down to conserve battery."
  end

  def missiles
    puts "*RUUUUURRRRR*"
    puts "*WOOOOOOOOOOSHHHHHHHH SHHH SHHH*"
    puts "A flourish of #{@missilqty} projectiles proceeds to move through the air at a reasonable speed."
    puts "*SHHHH* *POP*"
  end

end

#ironman = Bipedalmechnicalwarmachine.new("blue", "white", 3)
#ironman.lasers
#ironman.missiles

toys = []
loop do
  puts "Please input the color for your toy OR type \"finished\" if all toys have been customized."
  toycolor = gets.chomp
  break if toycolor == "finished"
  puts "Please input the color of your lasers:"
  lasercolor = gets.chomp
  puts "Please input the number of your missiles:"
  missileqty = gets.chomp.to_i
  toys << Bipedalmechnicalwarmachine.new(toycolor, lasercolor, missileqty)
end

#p toys[0]
#p toys[0].toycolor
#p toys[0].missileqty
#p toys[0].lasercolor

i = 0
while i < toys.length
  puts "The bipedal mechanical war machine toy ##{i+1} is #{toys[i].toycolor} with #{toys[i].lasercolor} lasers and #{toys[i].missileqty} missiles."

  i += 1
end