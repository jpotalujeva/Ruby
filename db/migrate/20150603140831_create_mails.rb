class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string :email
      t.string :message_field
      t.timestamps
    end
  end
end
