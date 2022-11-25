require_rel 'base_model'

module Dina
  class Organism < BaseModel
    property :id, type: :string, default: SecureRandom.uuid
    property :group, type: :string
    property :lifeStage, type: :string
    property :sex, type: :string
    property :remarks, type: :string
    property :isTarget, type: :boolean
    property :determination, type: :array, default: []
    property :createdBy, type: :string
    property :createdOn, type: :time

    validates_presence_of :group

    def self.endpoint_path
      "collection-api/"
    end

    def self.table_name
      "organism"
    end

  end
end
