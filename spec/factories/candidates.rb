FactoryGirl.define do
  factory :candidate do
    name "John Smith"
    geo_location "Newcity"
    github "@githubuser"
    linkedin "www.linkedin.com"
    education
    contact
  end
end
