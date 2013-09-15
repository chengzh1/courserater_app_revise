class RatersController < ApplicationController
  before_filter :signed_in_user
  # GET /raters
  # GET /raters.json
  def index
    @raters = Rater.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @raters }
    end
  end

  # GET /raters/1
  # GET /raters/1.json
  def show
    @rater = Rater.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rater }
    end
  end

  # GET /raters/new
  # GET /raters/new.json
  def new
    @rater = Rater.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rater }
    end
  end

  # GET /raters/1/edit
  def edit
    @rater = Rater.find(params[:id])
  end

  # POST /raters
  # POST /raters.json
  def create
      @rater = current_user.raters.build(params[:rater])

      if @rater.save
          flash[:success] = "New Rater created!"
          redirect_to root_url
      else
        @feed_items = []
        render 'static_pages/home'
      end
  end

  # PUT /raters/1
  # PUT /raters/1.json
  def update
    @rater = Rater.find(params[:id])

    respond_to do |format|
      if @rater.update_attributes(params[:rater])
        format.html { redirect_to @rater, notice: 'Rater was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raters/1
  # DELETE /raters/1.json
  def destroy
    @rater = Rater.find(params[:id])
    @rater.destroy

    respond_to do |format|
      format.html { redirect_to raters_url }
      format.json { head :no_content }
    end
  end
end
