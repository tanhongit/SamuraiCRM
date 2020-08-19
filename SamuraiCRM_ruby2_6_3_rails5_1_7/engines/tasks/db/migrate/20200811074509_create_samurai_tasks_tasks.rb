class CreateSamuraiTasksTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :samurai_tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: { to_table: :samurai_users}
      t.references :contact, foreign_key: { to_table: :samurai_contacts_contacts}

      t.timestamps
    end
  end
end
