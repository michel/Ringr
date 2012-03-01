class VictimController < ApplicationController
  def new
    @victim = Victim.new
  end

  def create
    @victime = Victim.new(params[:victim])
    if @victim.save
      flash[:notice] = "Troll succes!"
      redirect_to :new
    else

    end
  end
end
