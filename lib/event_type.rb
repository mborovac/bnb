require 'enum'

class EventType < Enum

  EventType.add_item(:FAMILY, 'Family')
  EventType.add_item(:LEISURE, 'Leisure')
  EventType.add_item(:PRO, 'Pro')
end
