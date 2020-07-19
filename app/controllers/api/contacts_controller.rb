class Api::ContactsController < ApplicationController
  def index
    p "5" * 70
    p current_user

    @contacts = Contact.all
    render 'index.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    
    p current_user
    
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
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    render 'show.json.jb'
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy

    render json: {message: "Contact successfully destroyed from database"}
  end
end
