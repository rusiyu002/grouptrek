class TreksController < ApplicationController
  def index
    @treks = Trek.all

    render("treks/index.html.erb")
  end

  def show
    @trek = Trek.find(params[:id])

    render("treks/show.html.erb")
  end

  def new
    @trek = Trek.new

    render("treks/new.html.erb")
  end

  def create
    @trek = Trek.new

    @trek.destination = params[:destination]
    @trek.start_date = params[:start_date]
    @trek.end_date = params[:end_date]
    @trek.description = params[:description]
    @trek.user_id = params[:user_id]
    @trek.image = params[:image]
    @trek.days_to_go = params[:days_to_go]

    save_status = @trek.save

    if save_status == true
      redirect_to("/treks/#{@trek.id}", :notice => "Trek created successfully.")
    else
      render("treks/new.html.erb")
    end
  end

  def edit
    @trek = Trek.find(params[:id])

    render("treks/edit.html.erb")
  end

  def update
    @trek = Trek.find(params[:id])

    @trek.destination = params[:destination]
    @trek.start_date = params[:start_date]
    @trek.end_date = params[:end_date]
    @trek.description = params[:description]
    @trek.user_id = params[:user_id]
    @trek.image = params[:image]
    @trek.days_to_go = params[:days_to_go]

    save_status = @trek.save

    if save_status == true
      redirect_to("/treks/#{@trek.id}", :notice => "Trek updated successfully.")
    else
      render("treks/edit.html.erb")
    end
  end

  def destroy
    @trek = Trek.find(params[:id])

    @trek.destroy

    if URI(request.referer).path == "/treks/#{@trek.id}"
      redirect_to("/", :notice => "Trek deleted.")
    else
      redirect_to(:back, :notice => "Trek deleted.")
    end
  end
end
