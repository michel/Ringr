class Facebook::CanvasController < Facebook::BaseController
  respond_to :html
  def index
    respond_with(@victim = Victim.new)
  end
end
