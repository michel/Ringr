class CallTask < Struct.new(:victim_id)
  def perform
    sleep(10)
    victim = Victim.where(guid: victim_id).first
    victim.call
  end
end
