class UrlsController < ApplicationController  

  def new
    @shortened_url = Url.new
    if params[:shortened_id]
      @shortened_id = params[:shortened_id]
    end
  end

  def create 
    @shortened_url = Url.new(url: params[:url][:url])
    if @shortened_url.save
      @shortened_id = @shortened_url.id
      #redirect_to new_url_path(shortened_id: @shortened_id)
      render :show
    else
      render :action => "new"
    end
  end

  def show
    @shortened_url = Url.find(params[:id])
    redirect_to @shortened_url.url
  end
end
