require 'rails/generators/migration'

module PrivateMail

  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations"

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations        
        migration_template "create_conversations.rb", "db/migrate/create_conversations.rb"
        migration_template "create_messages.rb", "db/migrate/create_messages.rb"
        migration_template "create_messages_recipients.rb", "db/migrate/create_messages_recipients.rb"
        migration_template "create_mail.rb", "db/migrate/create_mail.rb"
      end

      def copy_models
          copy_file "../models/mail.rb", "app/models/mail.rb"
          copy_file "../models/message.rb", "app/models/message.rb"
          copy_file "../models/conversation.rb", "app/models/conversation.rb"
      end

    end
  end

end