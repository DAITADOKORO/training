class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save #入力されたデータをdbに保存する。
      redirect_to events_path, notice: "successfully created book!"#保存された場合の移動先を指定。
    else
      @events = Book.all
      render :index
    end
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date)
  end

end
