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