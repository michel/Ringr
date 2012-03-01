class Victim
  include Mongoid::Document
  field :telephone_number, type: Integer
  field :name, type: String
  field :filename, type: String
  field :guid, type: String
  before_save :generate_mp3
  before_create :set_guid
  validates_format_of :telephone_number, with: /[\d]{8,10}/i

  def call
    Callr.new.call(self.telephone_number, self.name)
  end

  private
  def set_guid
    self.guid = SecureRandom.uuid
  end

  def generate_mp3
    return unless self.filename.blank?
    mp3 = Say.new("#{self.name}.....Seven days")
    mp3.say!
    self.filename = mp3.mp3_filename
  end
end

