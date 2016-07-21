require 'enum'

class EventDifficulty < Enum

  EventDifficulty.add_item(:KIDS, 0)
  EventDifficulty.add_item(:LOW, 1)
  EventDifficulty.add_item(:MEDIUM, 2)
  EventDifficulty.add_item(:HIGH, 3)
  EventDifficulty.add_item(:INSANE, 4)
end
