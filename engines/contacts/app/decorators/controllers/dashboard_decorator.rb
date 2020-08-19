Samurai::DashboardController.class_eval do
  before_action :set_contacts, only: :index

  private

  def set_contacts
    @contacts = current_user.contacts.ordered.limit(3)
  end
end