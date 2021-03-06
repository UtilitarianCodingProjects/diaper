# == Schema Information
#
# Table name: diaper_drive_participants
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  contact_name    :string
#  email           :string
#  phone           :string
#  comment         :string
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address         :string
#  business_name   :string
#

FactoryBot.define do
  factory :diaper_drive_participant do
    organization { Organization.try(:first) || create(:organization) }
    sequence(:name) { |n| "DD Participant ##{n}" }
    contact_name "Don Draper"
    sequence(:email) { |n| "don#{n}@scdp.com" }
    phone "212-555-1111"
    comment "A bit of a lush and philanderer."
  end
end
