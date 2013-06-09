class EventsController < ApplicationController
	def index
      @events = Event.all
	end

  def calendar
      @events = Event.all
  end

	def show
      @event = Event.find(params[:id])
	end

	def new
      @event = Event.new
	end

	def create
      @event = Event.new(params[:event])
      if @event.save
         redirect_to events_path, :notice => "Your event is successfully added!"
      else
         render "new"
      end
	end
    
  def edit
      @event = Event.find(params[:id])
  end

  def update
      @event = Event.find(params[:id])
      if @event.update_attributes(params[:event])
        redirect_to events_path, :notice => "Your event is successfully updated"
      else
        render "edit"
      end
  end

  def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to events_path, :notice => "Your event is successfully deleted"
  end
end
