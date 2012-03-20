class VictimsController < ApplicationController
  def new
    @victim = Victim.new
  end

  def create
    if victim = Victim.create(params[:victim])
      flash[:notice] = "Victims URL: #{victim.guid}"
      redirect_to new_victim_url
    end
  end
end
