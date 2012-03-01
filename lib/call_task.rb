class CallTask < Struct.new(:victim_id)
  def perform
    victim = Victim.where(guid: victim_id).first
    victim.call
  rescue => e
    puts e.backtrace
  end
end
