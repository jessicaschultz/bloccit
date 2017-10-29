FactoryGirl.define do
  factory :post do
    title RandomData.random_sentence
    body RandomData.random_paragraph
    created_at
    topic
    user
    rank 0.0
  end
end
