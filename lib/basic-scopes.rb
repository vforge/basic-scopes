require "basic-scopes/version"

require "active_record" unless defined?(ActiveRecord)
require "active_support" unless defined?(ActiveSupport)

module BasicScopes
  extend ActiveSupport::Concern

  included do
    def except_ids(ids) do
      self.where("#{self.table_name}.id NOT IN (?)", ids)
    end

    def filter_ids(ids) do
      self.where("#{self.table_name}.id IN (?)", ids)
    end

    def filter_last_updated(time) do
      self.where("#{self.table_name}.updated_at > ?", time.ago)
    end


    def by_id do
      self.order("#{self.table_name}.id DESC") }
    end

    def by_id_reversed do
      self.order("#{self.table_name}.id ASC") }
    end

    def by_created_at do
      self.order("#{self.table_name}.created_at DESC") }
    end

    def by_created_at_reversed do
      self.order("#{self.table_name}.created_at ASC") }
    end

    def by_updated_at do
      self.order("#{self.table_name}.updated_at DESC") }
    end

    def by_updated_at_reversed do
      self.order("#{self.table_name}.updated_at ASC") }
    end

  end

  module ClassMethods
  end
end

# include the extension 
ActiveRecord::Base.send :include, BasicScopes


