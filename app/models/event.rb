require 'event_type'
require 'event_difficulty'
require 'color'

class Event < ActiveRecord::Base
  self.inheritance_column = :_type_disabled

  belongs_to :region
  has_and_belongs_to_many :accommodations

  validates :name, :type, :difficulty, :region, :start_date, :end_date, :latitude, :longitude, :zoom, presence: true


  def get_color
    case self.difficulty
    when EventDifficulty[:KIDS].value
      return Color[:CYAN].value
    when EventDifficulty[:LOW].value
      return Color[:GREEN].value
    when EventDifficulty[:MEDIUM].value
      return Color[:BLUE].value
    when EventDifficulty[:HIGH].value
      return Color[:ORANGE].value
    when EventDifficulty[:INSANE].value
      return Color[:RED].value
    else
      return ''
    end
  end


  rails_admin do
    # navigation_label 'Main'
    weight 1
    list do
      field :id
      field :name
      field :type
      field :difficulty
      field :length
      field :duration
      field :min_height
      field :max_height
      field :contribution
      field :rating
      field :description
      field :start_date
      field :end_date
      field :start_time
      field :end_time
      field :region
      field :latitude
      field :longitude
      field :zoom
    end

    create do
      field :name
      field :type
      field :difficulty
      field :length
      field :duration
      field :min_height
      field :max_height
      field :contribution
      field :rating
      field :description
      field :start_date
      field :end_date
      field :start_time
      field :end_time
      field :region
      field :latitude
      field :longitude
      field :zoom
    end

    edit do
      field :name
      field :type
      field :difficulty
      field :length
      field :duration
      field :min_height
      field :max_height
      field :contribution
      field :rating
      field :description
      field :start_date
      field :end_date
      field :start_time
      field :end_time
      field :region
      field :latitude
      field :longitude
      field :zoom
    end
  end

  def type_enum
    EventType.for_select
  end

  def difficulty_enum
    EventDifficulty.for_select
  end
end