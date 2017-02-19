require 'enum'

class EventDifficulty < Enum

  EventDifficulty.add_item(0, 'Kids')
  EventDifficulty.add_item(1, 'Low')
  EventDifficulty.add_item(2, 'Medium')
  EventDifficulty.add_item(3, 'High')
  EventDifficulty.add_item(4, 'Insane')
end
