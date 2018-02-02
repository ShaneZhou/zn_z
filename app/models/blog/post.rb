module Blog
  class Post < ApplicationRecord
    # Associations
    belongs_to :setting, foreign_key: :blog_setting_id
  end
end
