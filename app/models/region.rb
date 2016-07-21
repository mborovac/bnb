class Region < ActiveRecord::Base

  has_many :accommodations

  validates :name, :latitude, :longitude, :zoom, :ordering_index, presence: true

  rails_admin do
    # navigation_label 'Regions'
    weight 3
    list do
      field :name
      field :latitude
      field :longitude
      field :zoom
      field :ordering_index
    end

    create do
      field :name
      field :latitude
      field :longitude
      field :zoom
      field :ordering_index
    end

    edit do
      field :name
      field :latitude
      field :longitude
      field :zoom
      field :ordering_index
    end
  end

end
