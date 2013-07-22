require "basic-scopes/version"

require "active_record" unless defined?(ActiveRecord)
require "active_support" unless defined?(ActiveSupport)

module BasicScopes
  extend ActiveSupport::Concern

  included do
    scope :except_ids, ->(ids) do
      where("#{self.table_name}.id NOT IN (?)", ids)
    end

    scope :filter_ids, ->(ids) do
      where("#{self.table_name}.id IN (?)", ids)
    end

    scope :filter_last_updated, ->(time) do
      where("#{self.table_name}.updated_at > ?", time.ago)
    end


    scope: by_id, -> do
      order("#{self.table_name}.id DESC")
    end

    scope: by_id_reversed, -> do
      order("#{self.table_name}.id ASC")
    end

    scope: by_created_at, -> do
      order("#{self.table_name}.created_at DESC")
    end

    scope: by_created_at_reversed, -> do
      order("#{self.table_name}.created_at ASC")
    end

    scope: by_updated_at, -> do
      order("#{self.table_name}.updated_at DESC")
    end

    scope: by_updated_at_reversed, -> do
      order("#{self.table_name}.updated_at ASC")
    end
  end

  module ClassMethods
  end
end

# include the extension 
ActiveRecord::Base.send :include, BasicScopes


