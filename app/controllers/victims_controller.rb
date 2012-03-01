class VictimsController < ApplicationController
  def new
    @victim = Victim.new
  end

  def create
    @victim = Victim.new(params[:victim])
    if @victim.save
      flash[:notice] = "Troll succes! #{victim_url(@victim.guid)}"
      redirect_to "/"
    else
      flash[:alert] = @victim.errors.full_message.join(", ")
      render "new"
    end
  end

  def show
    @victim = Victim.where(guid: params[:id]).first
    Delayed::Job.enqueue CallTask.new(@victim.guid)
    logger.debug @victim.inspect
    render "show", layout: false
  end
end
