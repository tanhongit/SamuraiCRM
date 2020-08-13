require_dependency "samurai/contacts/application_controller"

module Samurai::Contacts
  class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]
    # authorize_resource class: Samurai::Contacts::Contact

    # GET /contacts
    def index
      # @contacts = Contact.all
      @contacts = current_user.contacts
    end

    # GET /contacts/1
    def show
    end

    # GET /contacts/new
    def new
      @contact = Contact.new
    end

    # GET /contacts/1/edit
    def edit
    end

    # POST /contacts
    def create
      @contact = Contact.new(contact_params)
      @contact.user = current_user
      if @contact.save
        # Add samurai to access the correct path
        redirect_to [samurai, @contact], notice: 'Contact was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /contacts/1
    def update
      if @contact.update(contact_params)
        # Add samurai to access the correct path
        redirect_to [samurai, @contact], notice: 'Contact was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /contacts/1
    def destroy
      @contact.destroy
      # Add samurai to access the correct path
      redirect_to samurai.contacts_url, notice: 'Contact was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def contact_params
       # Add the parameters we allow
        params.require(:contact).permit(:first_name, :last_name, :company, :email, :phone, :user_id)
      end
  end
end
