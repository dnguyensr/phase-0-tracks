=begin
SPECIES
Doge Derpimus
CHARACTERISTICS
Friendly: yes
Eye count: 2
Name: varies
Color: varies

BEHAVIOR
fetch
derps
memes
makes faces
=end

class Puppy
end

Puppy.methods
duchess = Puppy.new
fido  = Puppy.new
spot = Puppy.new

p spot.class
p duchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
spot.play_dead