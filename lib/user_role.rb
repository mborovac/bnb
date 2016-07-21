require 'enum'

class UserRole < Enum

  UserRole.add_item(:ADMINISTRATOR, 'Administrator')
  UserRole.add_item(:USER, 'User')
  UserRole.add_item(:ACCOMMODATION_PROVIDER, 'Accommodation provider')
  UserRole.add_item(:BLOGGER, 'Blogger')
  UserRole.add_item(:PARTNER, 'Partner')
end
