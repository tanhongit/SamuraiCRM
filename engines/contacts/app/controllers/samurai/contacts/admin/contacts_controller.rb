module Samurai
	module Contacts
	  module Admin
		class ContactsController < Samurai::Admin::AdminController
		  def index
			authorize! :manage, nil
			@contacts = Contact.all
		  end
		end
	  end
	end
end
  