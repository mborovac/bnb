require 'user_role'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :accommodations
  has_many :reviews

  validates :username, :email, presence: true
  validates :role, inclusion: { in: UserRole.keys,
    message: "%{value} is not a valid role." }, presence: true


  rails_admin do
    # navigation_label 'Users'
    # label 'aaaa'
    # object_label_method do
    #   :custom_object_label
    #   # :username
    # end
    weight 9
    list do
      field :id
      field :username
      field :role
      field :email
      field :first_name
      field :last_name
      field :dob
    end

    create do
      field :username
      field :role
      field :email
      field :first_name
      field :last_name
      field :dob
    end

    edit do
      field :username
      field :role
      field :email
      field :first_name
      field :last_name
      field :dob
    end
  end

  def role_enum
    UserRole.for_select
  end

  def custom_object_label
    "User-#{self.username}"
  end

end
