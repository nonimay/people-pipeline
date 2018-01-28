FactoryGirl.define do
  factory :john_smith, class: Candidate do
    name "John Smith"
    geo_location "Newcity"
    github "@githubuser"
    linkedin "www.linkedin.com"
    email "john.smith@test.com"
    telephone "07123456789"
    street "1 New Street"
    city "Newcity"
    country "UK"
    postcode "AA111AA"
    education { FactoryGirl.create(:bachelors) }
  end
end
