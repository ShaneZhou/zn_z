module Blog
  class Setting < ApplicationRecord
    # Associations
    belongs_to :user, optional: true
    has_many :posts
  end
end
