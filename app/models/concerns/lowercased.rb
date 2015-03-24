module Lowercased
  extend ActiveSupport::Concern

  module ClassMethods
    def make_lowercased(field)

      # Override the field=(value) method.
      define_method("#{field}=") do |value|
        if value
          value = value.downcase
        end
        write_attribute(field.to_sym, value)
      end

      # Override the find_by_field(value) class method.
      define_singleton_method("find_by_#{field}") do |value|
        if value
          value = value.downcase
        end
        find_by(field.to_sym => value)
      end

      # Override the find_by_field!(value) class method.
      define_singleton_method("find_by_#{field}!") do |value|
        if value
          value = value.downcase
        end
        find_by!(field.to_sym => value)
      end

      # Create a validation
      validates field.to_sym, format: { with: /[^A-Z\s]+/, message: "does not allow whitespace or capital letters."}

    end
  end


end