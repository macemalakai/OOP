# A module is a group of objects that can be stored for use with other objects 
# by using mixins, and using the "include" keyword.





module Rap
  def rap(rhymes)
    puts "#{rhymes}"
  end

  class BigBoy
    include Rap 
  end

  biggie_smalls = BigBoy.new