class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    @contact.save
    render 'show.json.jb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      @contact.first_name = "andy",
      @contact.last_name = "g",
      @contact.email = "andy.heh@",
      @contact.phone_number = "393902"
    )
    render 'show.json.jb'
  end
end
