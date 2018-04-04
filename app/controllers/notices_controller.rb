class NoticesController < ApplicationController

  def index
    @notices = Notice.all
  end

  def create
    #render plain: params[:article].inspect
    @notice = Notice.new(notice_params)
    @notice.save
    flash[:notice] = "Notice was successfully created."
    redirect_to '/notices/new'
  end

  def show
    @notice = Notice.find(params[:id])
    @notices = Notice.all
  end

  def notice_params
    params.require(:notice).permit(:title,:description,:date)
  end

  def new
    @notice = Notice.new
  end

end