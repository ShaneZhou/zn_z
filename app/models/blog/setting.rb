module Blog
  class Setting < ApplicationRecord
    # Associations
    belongs_to :user, optional: true
  end
end
