FactoryGirl.define do
  factory :article, class: Scuttlebutt::Article do
    title "Lorem ipsum"
    body "Dolor sit amet"

    factory :published_article do
      published_at { Time.now }
    end
  end
end
