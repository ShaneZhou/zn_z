FactoryBot.define do
  factory :blog_post, class: 'Blog::Post' do
    title 'test_blog_post_title'
    association :setting, factory: :blog_setting
  end
end
