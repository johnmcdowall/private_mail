ActiveRecord::Schema.define(:version => 1) do

  create_table :private_conversations do |t|
    t.column :subject, :string, :default => ""
    t.column :created_at, :datetime, :null => false
  end

  create_table :private_mails do |t|
    t.column :user_id, :integer, :null => false
    t.column :private_message_id, :integer, :null => false
    t.column :private_conversation_id, :integer
    t.column :read, :boolean, :default => false
    t.column :trashed, :boolean, :default => false
    t.column :mailbox, :string, :limit => 25
    t.column :created_at, :datetime, :null => false
  end

  create_table :private_messages do |t|
    t.column :body, :text
    t.column :subject, :string, :default => ""
    t.column :headers, :text
    t.column :sender_id, :integer, :null => false
    t.column :private_conversation_id, :integer
    t.column :sent, :boolean, :default => false
    t.column :created_at, :datetime, :null => false
  end

  create_table :private_messages_recipients, :id => false do |t|
    t.column :private_message_id, :integer, :null => false
    t.column :recipient_id, :integer, :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end