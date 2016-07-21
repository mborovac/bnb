require 'enum'

class Color < Enum

  Color.add_item(:BLACK, '#000000')
  Color.add_item(:WHITE, '#ffffff')
  Color.add_item(:RED, '#ff0000')
  Color.add_item(:GREEN, '#00ff00')
  Color.add_item(:BLUE, '#0000ff')
  Color.add_item(:YELLOW, '#ffff00')
  Color.add_item(:PURPLE, '#660066')
  Color.add_item(:CYAN, '#00ffff')
  Color.add_item(:ORANGE, '#ff7f00')
  # Color.add_item(:ORANGE, '#ff6600')
  Color.add_item(:MAGENTA, '#ff00ff')
end
