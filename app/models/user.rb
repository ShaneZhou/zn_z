class User < ApplicationRecord
  # Associations
  has_one :blog_setting, class_name: 'Blog::Setting'
end
