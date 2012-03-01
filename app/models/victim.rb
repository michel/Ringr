class Victim
  include Mongoid::Document
  field :telephone_number, type: Integer
  field :name, type: String
  validates_format_of :telephone_number, with: /^\d{8-10}$/

  def sanitize_mobile_numer
    self.telephone_number = self.telephone_number.gsub(/[^\d]+/, "")
  end
end

