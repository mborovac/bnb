class Accommodation < ActiveRecord::Base

  belongs_to :user
  belongs_to :region
  has_and_belongs_to_many :events

  validates :name,  presence: true
  validates :capacity,  presence: true
  validates :price,  presence: true
  validates :region,  presence: true
  # validates :contents,  presence: true
  # validates :service,  presence: true
  # validates :distance_from_event,  presence: true


  rails_admin do
    # navigation_label 'Main'
    weight 2
    list do
      field :name
      field :rating
      field :price
      field :capacity
      field :description
      field :rules
      field :region
      field :events
      field :user
      field :latitude
      field :longitude
      field :zoom
    end

    create do
      field :name
      field :rating
      field :price
      field :capacity
      field :description
      field :rules
      field :region
      field :events
      field :user
      field :latitude
      field :longitude
      field :zoom
    end

    edit do
      field :id
      field :name
      field :rating
      field :price
      field :capacity
      field :description
      field :rules
      field :region
      field :events
      field :user
      field :latitude
      field :longitude
      field :zoom
    end
  end

end
