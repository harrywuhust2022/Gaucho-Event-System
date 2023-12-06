class CommentsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @event = @user.created_events.find(params[:event_id])
    @comment = @event.comments.build(comment_params)

    # @admin = User.find_by(username: 'admin')
    # if @admin.nil?
    #   @admin = User.new
    #   @admin.username = "admin"
    #   @admin.password = "admin"
    #   @admin.email = "admin@email.com"
    #   unless @admin.save
    #     puts 'no admin or save fails'
    #   end
    # end
    # @comment.user = @admin
    if current_user.nil?
      redirect_to '/login'
    else
      @comment.user = current_user
      @comment.save
      redirect_to user_event_path(@user, @event)
    end


  end
  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
