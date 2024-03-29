class FeatureCategoriesController < ApplicationController
  # GET /feature_categories
  # GET /feature_categories.xml
  def index
    @feature_categories = FeatureCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feature_categories }
    end
  end

  # GET /feature_categories/1
  # GET /feature_categories/1.xml
  def show
    @feature_category = FeatureCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feature_category }
    end
  end

  # GET /feature_categories/new
  # GET /feature_categories/new.xml
  def new
    @feature_category = FeatureCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feature_category }
    end
  end

  # GET /feature_categories/1/edit
  def edit
    @feature_category = FeatureCategory.find(params[:id])
  end

  # POST /feature_categories
  # POST /feature_categories.xml
  def create
    @feature_category = FeatureCategory.new(params[:feature_category])

    respond_to do |format|
      if @feature_category.save
        format.html { redirect_to(feature_categories_url, :notice => 'Feature category was successfully created.') }
       # format.html { redirect_to(@feature_category, :notice => 'Feature category was successfully created.') }
        format.xml  { render :xml => @feature_category, :status => :created, :location => @feature_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feature_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feature_categories/1
  # PUT /feature_categories/1.xml
  def update
    @feature_category = FeatureCategory.find(params[:id])

    respond_to do |format|
      if @feature_category.update_attributes(params[:feature_category])
        format.html { redirect_to(feature_categories_url, :notice => 'Feature category was successfully updated.') }
       # format.html { redirect_to(@feature_category, :notice => 'Feature category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feature_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_categories/1
  # DELETE /feature_categories/1.xml
  def destroy
    @feature_category = FeatureCategory.find(params[:id])
    @feature_category.destroy

    respond_to do |format|
      format.html { redirect_to(feature_categories_url) }
      format.xml  { head :ok }
    end
  end
end
