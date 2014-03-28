class EventsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

	def index
      @events = Event.all
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @events }
        format.json { render :json => @events }
      end
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
end
