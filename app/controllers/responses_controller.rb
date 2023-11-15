class ResponsesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @invite = @user.received_invites.find(params[:selected_invite])
    @response = @invite.build_response(response_params)
    result = params[:response_value]

    if result == "yes"
      @response.result = true


    else
      @response.result = false

    end



    @response.responser = @invite.guest
    @response.receiver = @invite.host
    @response.event = @invite.event
    #@response.save
    puts @response
    if result
      @invite.status = 1
    else
      @invite.status = -1
    end

    if @response.save
      @invite.save
      redirect_to received_invites_user_path(@user)
    else

      render received_invites_user_path(@user)
    end
  end
  private
  def response_params
    params.require(:response).permit(:message)
  end
end
