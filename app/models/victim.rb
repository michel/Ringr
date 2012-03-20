class Victim
  include Mongoid::Document
  field :telephone_number, type: Integer
  field :name, type: String
  field :filename, type: String
  field :guid, type: String

  validates_presence_of :name
  validates_format_of :telephone_number, with: /^[\d]+$/
  validates_length_of :telephone_number, in: 8..10

  before_create :set_guid

  def set_guid
    self.guid = SecureRandom.uuid
  end
end
