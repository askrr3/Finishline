class Product < ActiveRecord::Base

  belongs_to :user
  # has_many :connection, class_name: 'User'
end
