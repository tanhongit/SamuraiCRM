Samurai::User.class_eval do
  has_many :contacts, class_name: 'Samurai::Contacts::Contact'
  # https://stackoverflow.com/questions/57875758/ruby-on-rails-5-2-upgrade-argumenterror-a-class-was-passed-to-class-name-b
end