class Api::ContactsController < ApplicationController
  def first_contact
    @first_contact = Contact.first
    render 'contacts.json.jb'
  end
end
