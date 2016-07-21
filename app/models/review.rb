class Review < ActiveRecord::Base

  belongs_to :user


  rails_admin do
    # navigation_label 'Reviews'
    weight 8
    list do
      field :contents
      field :rating
      field :user
      field :reviewable
    end

    create do
      field :contents
      field :rating
      field :user
      field :reviewable
    end

    edit do
      field :contents
      field :rating
      field :user
      field :reviewable
    end
  end

end
