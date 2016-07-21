# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(email: 'marko.borovac@bikeandbed.com', encrypted_password: '', username: 'mborovac', role: 'Administrator')

require 'event_type'
require 'event_difficulty'

User.find_or_create_by(email: 'admin@bikeandbed.com') do |u|
  u.username              = 'admin'
  u.password              = 'administrator'
  u.password_confirmation = 'administrator'
  u.first_name            = 'admin'
  u.last_name             = 'admin'
  u.dob                   = DateTime.new(1900)
  u.role                  = UserRole[:ADMINISTRATOR].value
end

Region.find_or_create_by(name: 'Region 1') do |r|
  r.latitude        = 34.0
  r.longitude       = 45.0
  r.zoom            = 5
  r.ordering_index  = 1
end

Event.find_or_create_by(name: 'Event 1') do |e|
  e.type        = EventType[:PRO].value
  e.difficulty  = EventDifficulty[:HIGH].value
  e.start_date  = Date.today
  e.end_date    = Date.today + 2
  e.region      = Region.first
  e.latitude    = 34.0
  e.longitude   = 45.0
  e.zoom        = 5
end
