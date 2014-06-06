#-------------------------------------------------------------------------------------#
#                                                                                     #
#                                    CIRCLE CLASS                                     #
#                                                                                     #
#-------------------------------------------------------------------------------------#

# This class takes care of building a circle with a specfied radius. In our implementation
# we specify the radius in a constant situated in main.rb. This class is used in association
# with the timer class in order to create the dots used for time.


class Circle
  attr_reader :columns, :rows

  def initialize radius
    @columns = @rows = radius * 2

    lower_half = (0...radius).map do |y|
      x = Math.sqrt(radius**2 - y**2).round
      right_half = "#{"\xff" * x}#{"\x00" * (radius - x)}"
      "#{right_half.reverse}#{right_half}"
    end.join

    @blob = lower_half.reverse + lower_half
    @blob.gsub!(/./) { |alpha| "\xff\xff\xff#{alpha}"}
  end

  def to_blob
    @blob
  end
end
