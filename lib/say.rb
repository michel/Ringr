class Say
  attr_accessor :say_what

  def initialize(say_what)
    @say_what = say_what
  end

  def say!
    generate_aiff
    convert_to_mp3
  end

  private
  def filename
    @filename ||= UUID.new.generate
  end

  def aiff_filename
    "#{filename}.aiff"
  end

  def mp3_filename
    "#{filename}.mp3"
  end

  def generate_aiff
    `/usr/bin/say -v 'Whisper' -o #{aiff_filename} "#{self.say_what}"`
  end

  def convert_to_mp3
    `/usr/local/bin/lame #{aiff_filename} #{mp3_filename}`
  end
end

