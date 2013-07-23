require "basic-scopes/version"

require "active_record" unless defined?(ActiveRecord)
require "active_support" unless defined?(ActiveSupport)

module BasicScopes
  extend ActiveSupport::Concern

  included do
    scope :except_ids, ->(ids) { where("#{self.table_name}.id NOT IN (?)", ids) }
    scope :filter_ids, ->(ids) { where("#{self.table_name}.id IN (?)", ids) }
    scope :filter_last_updated, ->(time) { where("#{self.table_name}.updated_at > ?", time.ago) }

    scope :by_id,                   ->{ order("#{self.table_name}.id DESC") }
    scope :by_id_reversed,          ->{ order("#{self.table_name}.id ASC") }
    scope :by_created_at,           ->{ order("#{self.table_name}.created_at DESC") }
    scope :by_created_at_reversed,  ->{ order("#{self.table_name}.created_at ASC") }
    scope :by_updated_at,           ->{ order("#{self.table_name}.updated_at DESC") }
    scope :by_updated_at_reversed,  ->{ order("#{self.table_name}.updated_at ASC") }
  end

  module ClassMethods
  end
end

# include the extension 
ActiveRecord::Base.send :include, BasicScopes


