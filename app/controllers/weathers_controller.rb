class WeathersController < ApplicationController
  def index
    @weathers = Weather.all

    render("weathers/index.html.erb")
  end

  def show
    @weather = Weather.find(params[:id])

    render("weathers/show.html.erb")
  end

  def new
    @weather = Weather.new

    render("weathers/new.html.erb")
  end

  def create
    @weather = Weather.new

    @weather.temperature = params[:temperature]
    @weather.summary = params[:summary]
    @weather.score_id = params[:score_id]

    save_status = @weather.save

    if save_status == true
      redirect_to("/weathers/#{@weather.id}", :notice => "Weather created successfully.")
    else
      render("weathers/new.html.erb")
    end
  end

  def edit
    @weather = Weather.find(params[:id])

    render("weathers/edit.html.erb")
  end

  def update
    @weather = Weather.find(params[:id])

    @weather.temperature = params[:temperature]
    @weather.summary = params[:summary]
    @weather.score_id = params[:score_id]

    save_status = @weather.save

    if save_status == true
      redirect_to("/weathers/#{@weather.id}", :notice => "Weather updated successfully.")
    else
      render("weathers/edit.html.erb")
    end
  end

  def destroy
    @weather = Weather.find(params[:id])

    @weather.destroy

    if URI(request.referer).path == "/weathers/#{@weather.id}"
      redirect_to("/", :notice => "Weather deleted.")
    else
      redirect_to(:back, :notice => "Weather deleted.")
    end
  end
end
