class Victim
  include Mongoid::Document
  field :telephone_number, type: Integer
  field :name, type: String
  #validates_format_of :telephone_number, with: /^\d{8-10}$/
  
  after_save :generate_mp3

  def sanitize_mobile_numer
    self.telephone_number = self.telephone_number.gsub(/[^\d]+/, "")
  end

  private
  def generate_mp3
    mp3 = Say.new("#{self.name}.....Seven days")
    mp3.say!
  end
end

