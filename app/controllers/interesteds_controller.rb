class InterestedsController < ApplicationController
  def index
    # @interesteds = Interested.all
    @interesteds = current_user.interesteds
    render("interesteds/index.html.erb")
  end

  def show
    @interested = Interested.find(params[:id])

    render("interesteds/show.html.erb")
  end

  def new
    @interested = Interested.new

    render("interesteds/new.html.erb")
  end

  def create
    @interested = Interested.new

    @interested.user_id = params[:user_id]
    @interested.trek_id = params[:trek_id]

    save_status = @interested.save

    if save_status == true
      redirect_to("/interesteds/#{@interested.id}", :notice => "Interested created successfully.")
    else
      render("interesteds/new.html.erb")
    end
  end

  def edit
    @interested = Interested.find(params[:id])

    render("interesteds/edit.html.erb")
  end

  def update
    @interested = Interested.find(params[:id])

    @interested.user_id = params[:user_id]
    @interested.trek_id = params[:trek_id]

    save_status = @interested.save

    if save_status == true
      redirect_to("/interesteds/#{@interested.id}", :notice => "Interested updated successfully.")
    else
      render("interesteds/edit.html.erb")
    end
  end

  def destroy
    @interested = Interested.find(params[:id])

    @interested.destroy

    if URI(request.referer).path == "/interesteds/#{@interested.id}"
      redirect_to("/", :notice => "Interested deleted.")
    else
      redirect_to(:back, :notice => "Interested deleted.")
    end
  end
end
