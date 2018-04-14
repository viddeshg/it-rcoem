class NoticesController < ApplicationController

  def index
    @notices = Notice.all
  end

  def create
    #render plain: params[:article].inspect
    @notice = Notice.new(notice_params)
    @notice.save
    flash[:notice] = "Notice was successfully created."
    redirect_to '/admin/notices'
  end

  def show
    @notice = Notice.find(params[:id])
    @notices = Notice.all
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    @notice.update(notice_params)
    flash[:notice] = "Notice was successfully edited."
    redirect_to '/admin/notices'
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    flash[:notice] = "Notice was deleted."
    redirect_to '/admin/notices'

  end

  def notice_params
    params.require(:notice).permit(:title,:description,:date)
  end

  def new
    @notice = Notice.new
  end

end