class GoingsController < ApplicationController
  def index
    @goings = Going.all

    render("goings/index.html.erb")
  end

  def show
    @going = Going.find(params[:id])

    render("goings/show.html.erb")
  end

  def new
    @going = Going.new

    render("goings/new.html.erb")
  end

  def create
    @going = Going.new

    @going.user_id = params[:user_id]
    @going.trek_id = params[:trek_id]

    save_status = @going.save

    if save_status == true
      redirect_to("/goings/#{@going.id}", :notice => "Going created successfully.")
    else
      render("goings/new.html.erb")
    end
  end

  def edit
    @going = Going.find(params[:id])

    render("goings/edit.html.erb")
  end

  def update
    @going = Going.find(params[:id])

    @going.user_id = params[:user_id]
    @going.trek_id = params[:trek_id]

    save_status = @going.save

    if save_status == true
      redirect_to("/goings/#{@going.id}", :notice => "Going updated successfully.")
    else
      render("goings/edit.html.erb")
    end
  end

  def destroy
    @going = Going.find(params[:id])

    @going.destroy

    if URI(request.referer).path == "/goings/#{@going.id}"
      redirect_to("/", :notice => "Going deleted.")
    else
      redirect_to(:back, :notice => "Going deleted.")
    end
  end
end
