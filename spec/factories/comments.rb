FactoryGirl.define do
  factory :comment do
    body RandomData.random_paragraph
    post
    user
    created_at
    rank 0.0
  end
end
