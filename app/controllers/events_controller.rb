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
    render status: 201, json:{event: @event}
  end

  def destroy
    @id = params[:id]
    @record = Event.find(@id)
    if @record.destroy
      head :no_content
    else
      render json:{error: 'unexpected_error'}
    end
  end

  def update
    @id = params[:id]
    @title = params[:title]
    @description = params[:description]
    @ts = params[:ts]
    @event = Event.update(@id, :title => @title, :description => @description, :ts => @ts)
    render json:{event: @event}
  end
end
