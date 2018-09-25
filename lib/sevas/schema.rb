module Sevas
  module Schema
    def self.included(base)
      base.extend ClassMethods
      base.class_eval do
        @keys = []
        @relations = {}
        @schemas = {}
      end
    end

    module ClassMethods
      def attribute(key, options = nil) # options is a `:schema`, `:relation`
        add_key(key, options)

        if options
          add_relation(key, options[:relation])
          add_schema(key, options[:schema])
        end
      end

      private

      # This allows us to check allowed field
      def add_key(key)
        @keys << key unless key.in?(@keys)
      end

      # This allows us to check fields in nested objects
      def add_relation(key, relation)
        return unless relation
        @relations[key] = relation == true ? key : relation
      end

      # This allows us to reset preloaded has_many resources
      def add_schema(key, schema)
        return unless schema
        @relations[key] = schema
      end
    end
  end
end
