# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :kpi_value do
    region nil
    kpi nil
    value 1.5
  end
end
