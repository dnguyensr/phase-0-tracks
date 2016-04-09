module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!! :)"
  end
#  p self.yell_angrily("So angry")
#  p self.yell_happily("So happy")
end

class Heckler
  include Shout
end

class Fan
  include Shout
end

bob = Heckler.new
p bob.yell_angrily("Tone down for what")

bill = Fan.new
p bill.yell_happily("We won")