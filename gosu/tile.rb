class Tile
  # a tile has an X and a Y position
  # a tile has a letter associated or is empty
  # a tile's content can be changed
  # each tile has a color
  # each tile's color can be conditionally changed

  attr_accessor :x, :y, :content, :color,
                :center_top, :center_left, :center_bottom, :center_right

  def initialize(x, y, content = nil)
    @x = x
    @y = y
    @content = content
    @color = Gosu::Color.new(242, 242, 242)
    @center_top = [@x + (CELL_SIZE_X / 2),@y + 13]
    @center_left = [@x + 13, @y + (CELL_SIZE_Y / 2)]
    @center_bottom = [@x + (CELL_SIZE_X / 2),@y + CELL_SIZE_Y - 13]
    @center_right = [@x + CELL_SIZE_X - 13, @y + (CELL_SIZE_Y / 2)]
  end

end