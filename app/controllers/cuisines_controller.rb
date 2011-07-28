class CuisinesController < ApplicationController
  # GET /cuisines
  # GET /cuisines.xml
  def index
    @cuisines = Cuisine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cuisines }
    end
  end

  # GET /cuisines/1
  # GET /cuisines/1.xml
  def show
    @cuisine = Cuisine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cuisine }
    end
  end

  # GET /cuisines/new
  # GET /cuisines/new.xml
  def new
    @cuisine = Cuisine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cuisine }
    end
  end

  # GET /cuisines/1/edit
  def edit
    @cuisine = Cuisine.find(params[:id])
  end

  # POST /cuisines
  # POST /cuisines.xml
  def create
    @cuisine = Cuisine.new(params[:cuisine])

    respond_to do |format|
      if @cuisine.save
        format.html { redirect_to(@cuisine, :notice => 'Cuisine was successfully created.') }
        format.xml  { render :xml => @cuisine, :status => :created, :location => @cuisine }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cuisine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cuisines/1
  # PUT /cuisines/1.xml
  def update
    @cuisine = Cuisine.find(params[:id])

    respond_to do |format|
      if @cuisine.update_attributes(params[:cuisine])
        format.html { redirect_to(@cuisine, :notice => 'Cuisine was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cuisine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cuisines/1
  # DELETE /cuisines/1.xml
  def destroy
    @cuisine = Cuisine.find(params[:id])
    @cuisine.destroy

    respond_to do |format|
      format.html { redirect_to(cuisines_url) }
      format.xml  { head :ok }
    end
  end
end
