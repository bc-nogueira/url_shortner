class LinksController < ApplicationController
  def index
    @links = Link.all.ordered_by_clicks.first(100)
    @new_link = Link.new
  end

  def create
    @link = Link.create(link_params)
    redirect_to root_path
    # TODO: Add treatment when @link is not valid when working with form
    # if @link.save
    #   redirect_to root_path
    # end
  end

  def show
    link = Link.by_tiny_url(params[:tiny_url]).first
    link.update(clicks: link.clicks + 1)
    redirect_to link.url
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
