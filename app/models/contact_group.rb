class ContactGroup < ApplicationRecord
  belongs_to :groups
  belongs_to :contacts
end
