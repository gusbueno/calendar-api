class EventsController < ApplicationController
  def show
    @events = Event.all
    render json:{ events: @events }
  end

  def create
    @title = params[:title]
    @description = params[:description]
    @ts = params[:ts]
    @event = Event.create({:title => @title, :description => @description, :ts => @ts})
    render json:{event: @event }
  end
end
