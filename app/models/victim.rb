class Victim
  include Mongoid::Document
  field :telephone_number, type: Integer
  field :name, type: String
  field :filename, type: String
  #validates_format_of :telephone_number, with: /^\d{8-10}$/
  
  before_save :generate_mp3

  def sanitize_mobile_numer
    self.telephone_number = self.telephone_number.gsub(/[^\d]+/, "")
  end

  private
  def generate_mp3
    return unless self.filename.blank?
    mp3 = Say.new("#{self.name}.....Seven days")
    mp3.say!
    self.filename = mp3.mp3_filename
  end
end

