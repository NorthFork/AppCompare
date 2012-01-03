class FeaturesController < ApplicationController
  # GET /features
  # GET /features.json

  load_and_authorize_resource  #cancan make sure direct access to edit/new page allow
  
  before_filter :get_feature_category

  def index
    @features = @feature_category.features
    # @features = Feature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @features }
    end
  end

  # GET /features/1
  # GET /features/1.json
  def show
    @feature = @feature_category.features.find(params[:id])
    # @feature = Feature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feature }
    end
  end

  # GET /features/new
  # GET /features/new.json
  def new
    @feature = @feature_category.features.build
    # @feature = Feature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feature }
    end
  end

  # GET /features/1/edit
  def edit
    @feature = @feature_category.features.find(params[:id])
    #@feature = Feature.find(params[:id])
  end

  # POST /features
  # POST /features.json
  def create
    @feature = @feature_category.features.build(params[:feature])
   # @feature = Feature.new(params[:feature])

    respond_to do |format|
      if @feature.save
        format.html { redirect_to([@feature_category], notice: 'Feature was successfully created.') }
        #brian this sends to show format.html { redirect_to([@feature_category, @feature], :notice => 'Feature was successfully created.') }
       # format.html { redirect_to @feature, notice: 'Feature was successfully created.' }
        format.json { render json: @feature, status: :created, location: @feature }
      else
        format.html { render action: "new" }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /features/1
  # PUT /features/1.json
  def update
    @feature = @feature_category.features.find(params[:id])
    #@feature = Feature.find(params[:id])

    respond_to do |format|
      if @feature.update_attributes(params[:feature])
        format.html { redirect_to([@feature_category], notice: 'Feature was successfully updated.') }
        #brian this goes to show format.html { redirect_to([@feature_category, @feature], :notice => 'Feature was successfully updated.') }
       # format.html { redirect_to @feature, notice: 'Feature was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /features/1
  # DELETE /features/1.json
  def destroy
    @feature = @feature_category.features.find(params[:id])
    #@feature = Feature.find(params[:id])
    @feature.destroy

    respond_to do |format|
      #format.html { redirect_to(features_url) }
      format.html { redirect_to([@feature_category], notice: 'Feature was successfully destroyed.') }
     # format.html { redirect_to(feature_category_features_path(@feature)) }
      format.json { head :ok }
    end
  end

  private

  def get_feature_category
    @feature_category = FeatureCategory.find(params[:feature_category_id])
  end
end
