class Group < ApplicationRecord
  has_many :contact_groups
  has_many :contacts, though: :contact_groups
end
