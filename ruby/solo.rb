#generic ironman/gundam toy class
#avoid trademarked names
#initialize
#long initialization sequence
#prompt for colors, toy, missile, lasers
#weapons: lasers, missiles
#sounds and text for each weapon, incoporate color


class Bipedalmechnicalwarmachine

  def initialize(bipedalmechanicalwarmachinecolor, missilecolor, lasercolor)
    attr_reader = :bipedalmechanicalwarmachinecolor
    attr_accessor = :missilecolor, :lasercolor
    @bipedalmechanicalwarmachinecolor = bipedalmechanicalwarmachinecolor
    @missilecolor = missilecolor
    @lasercolor = lasercolor
    puts "Initializing Bipedal Mechanical War Machine Launching Sequence..."
    puts "...war machine painting in progress..."
    puts "...missiles being retrofitted for color..."
    puts "...laser colors being modified..."
    puts "User Customizations Complete"
    puts "Operating System BPMWC Initializition Complete"
  end

  def lasers
    puts "A #{@bipedalmechanicalwarmachinecolor} light is emitted from the head of the #{@bipedalmechanicalwarmachinecolor} Bipedal Mechanical War Machine and it is blinding!"
    puts "The mysterious light proceeds to illuminate the immediate area in front of it."
    puts "*PEW PEW*"
    puts "After two seconds of intense lighting, the \"laser\" shuts down to conserve battery."
  end

  def missiles
    puts "*RUUUUURRRRR*"
    puts "*WOOOOOOOOOOSHHHHHHHH SHHH SHHH*"
    puts "A #{@missilecolor} projectile proceeds to move through the air at a reasonable speed."
    puts "*SHHHH* *POP*"
  end

end

ironman = Bipedalmechnicalwarmachine.new("blue", "white", "gold")
ironman.lasers
ironman.missiles

#def buildtoy
#  asdf
#end

toys = []
loop do
  puts "Please input the color for your toy:"
  bipedalmechanicalwarmachinecolor = gets.chomp
  break if bipedalmechanicalwarmachinecolor == "finished"
  puts "Please input the color of your missiles:"
  missilecolor = gets.chomp
  puts "Please input the color of your lasers:"
  lasercolor = gets.chomp
#  toys << [bipedalmechanicalwarmachinecolor, missilecolor, lasercolor]
  toys << Bipedalmechnicalwarmachine.new(bipedalmechanicalwarmachinecolor, missilecolor, lasercolor)
end

p toys
p toys.length
p toys[0][1]
i = 0
while i < toys.length
  a = toys[i][1]
  b = toys[i][2]
  c = toys[i][3]
  puts "This bipedal mechanical war machine toy is #{a} with #{b} missiles and #{c} lasers."
  i += 1
#toys.each do |x, y, z, a|
#  puts "this is #{x}"
#  puts "This bipedal mechanical war machine toy is #{#bipedalmechanicalwarmachinecolor} with #{missilecolor} missiles and #{#lasercolor} lasers."
end