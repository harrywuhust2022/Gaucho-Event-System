class EventsController < ApplicationController
    def index
        @events = Current.user.events
    end

    def edit
        @event = Current.user.events.find(params[:id])
    end

    def update
        @event = Current.user.events.find(params[:id])
        if @event.update(event_params)
            redirect_to @event, notice: 'Event was successfully updated.'
        else
            render :edit
        end
    end

    def new
        @user = Current.user
        @event = Event.new
    end

    def create
        @user = Current.user
        @event = @user.events.build(event_params)
        
        if @event.save
            redirect_to user_path(@user), notice: 'Event was successfully created.'
        else
            render :new
        end
    end

    def destroy
        @event = Current.user.events.find(params[:id])
        @event.destroy
        redirect_to events_path, notice: 'Event was successfully deleted.'
    end

    def event_params
        params.require(:event).permit(:title, :content)
    end

end
