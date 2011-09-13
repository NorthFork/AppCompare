class FeaturesController < ApplicationController
  # GET /features
  # GET /features.xml
  before_filter :get_feature_category

  def index
    @features = @feature_category.features
    # @features = Feature.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @features }
    end
  end

  # GET /features/1
  # GET /features/1.xml
  def show
    @feature = @feature_category.features.find(params[:id])
    # @feature = Feature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feature }
    end
  end

  # GET /features/new
  # GET /features/new.xml
  def new
    @feature = @feature_category.features.build
    # @feature = Feature.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feature }
    end
  end

  # GET /features/1/edit
  def edit
    @feature = @feature_category.features.find(params[:id])
    #@feature = Feature.find(params[:id])
  end

  # POST /features
  # POST /features.xml
  def create
    @feature = @feature_category.features.build(params[:feature])
   # @feature = Feature.new(params[:feature])

    respond_to do |format|
      if @feature.save
        format.html { redirect_to([@feature_category], :notice => 'Feature was successfully created.') }
        #brian this sends to show format.html { redirect_to([@feature_category, @feature], :notice => 'Feature was successfully created.') }
        #format.html { redirect_to(@feature, :notice => 'Feature was successfully created.') }
        format.xml  { render :xml => @feature, :status => :created, :location => @feature }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /features/1
  # PUT /features/1.xml
  def update
    @feature = @feature_category.features.find(params[:id])
    #@feature = Feature.find(params[:id])

    respond_to do |format|
      if @feature.update_attributes(params[:feature])
        format.html { redirect_to([@feature_category], :notice => 'Feature was successfully updated.') }
        #brian this goes to show format.html { redirect_to([@feature_category, @feature], :notice => 'Feature was successfully updated.') }
        #orig format.html { redirect_to(@feature, :notice => 'Feature was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /features/1
  # DELETE /features/1.xml
  def destroy
    @feature = @feature_category.features.find(params[:id])
    #@feature = Feature.find(params[:id])
    @feature.destroy

    respond_to do |format|
      #format.html { redirect_to(features_url) }
      format.html { redirect_to([@feature_category],:notice => 'Feature was successfully destroyed.') }
     # format.html { redirect_to(feature_category_features_path(@feature)) }
      format.xml  { head :ok }
    end
  end

  private

  def get_feature_category
    @feature_category = FeatureCategory.find(params[:feature_category_id])
  end
end
