require_relative 'multilingual_description'

module Dina
  class MultilingualDescriptionCaster
    def self.cast(value, default)
      begin
        Dina::MultilingualDescription.new(value).to_hash
      rescue ArgumentError
        { descriptions: [] }
      end
    end
  end
end
