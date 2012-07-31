class ProductfeedsController < ApplicationController
  # GET /productfeeds
  # GET /productfeeds.json
  def index
    @productfeeds = Productfeed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productfeeds }
    end
  end

  # GET /productfeeds/1
  # GET /productfeeds/1.json
  def show
    @productfeed = Productfeed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productfeed }
    end
  end

  # GET /productfeeds/new
  # GET /productfeeds/new.json
  def new
    @productfeed = Productfeed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productfeed }
    end
  end

  # GET /productfeeds/1/edit
  def edit
    @productfeed = Productfeed.find(params[:id])
  end

  # POST /productfeeds
  # POST /productfeeds.json
  def create
    @productfeed = Productfeed.new(params[:productfeed])

    respond_to do |format|
      if @productfeed.save
        format.html { redirect_to @productfeed, notice: 'Productfeed was successfully created.' }
        format.json { render json: @productfeed, status: :created, location: @productfeed }
      else
        format.html { render action: "new" }
        format.json { render json: @productfeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productfeeds/1
  # PUT /productfeeds/1.json
  def update
    @productfeed = Productfeed.find(params[:id])

    respond_to do |format|
      if @productfeed.update_attributes(params[:productfeed])
        format.html { redirect_to @productfeed, notice: 'Productfeed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productfeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productfeeds/1
  # DELETE /productfeeds/1.json
  def destroy
    @productfeed = Productfeed.find(params[:id])
    @productfeed.destroy

    respond_to do |format|
      format.html { redirect_to productfeeds_url }
      format.json { head :no_content }
    end
  end
end
