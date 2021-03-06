FactoryBot.define do
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
    education { FactoryBot.create(:bachelors) }
    pipeline_status { FactoryBot.create(:waiting_interview) }
    employment_status { FactoryBot.create(:employed_permanent) }
  end
end
