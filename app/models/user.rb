class User < ActiveRecord::Base
  belongs_to :user_type
  has_one :teacher
  has_one :student
end
