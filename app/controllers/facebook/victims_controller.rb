class Facebook::VictimsController < Facebook::BaseController
  respond_to :html

  def create
    if @victim = Victim.create(params[:victim])
      flash[:notice] = "Victims URL: #{@victim.guid}"
    else
      flash[:error] = "Victim could not be pranked"
    end

    respond_with(@victim, location: facebook_root_path)
  end
end
