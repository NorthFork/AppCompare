class AppFeaturesController < ApplicationController
  # GET /app_features
  # GET /app_features.json
  before_filter :get_app
  before_filter :fetch_features, :only => [:edit, :update, :new, :create]
  before_filter :fetch_feature_statuses, :only => [:edit, :update, :new, :create]
  before_filter :fetch_sources, :only => [:edit, :update, :new, :create]
  def index
    @app_features = @app.app_features
    #@app_features = AppFeature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_features }
    end
  end

  # GET /app_features/1
  # GET /app_features/1.json
  def show
    @app_feature = @app.app_features.find(params[:id])
    #@app_feature = AppFeature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_feature }
    end
  end

  # GET /app_features/new
  # GET /app_features/new.json
  def new
    @app_feature = AppFeature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_feature }
    end
  end

  # GET /app_features/1/edit
  def edit
    @app_feature = @app.app_features.find(params[:id])
    #@app_feature = AppFeature.find(params[:id])
  end

  # POST /app_features
  # POST /app_features.json
  def create
    @app_feature = @app.app_features.build(params[:app_feature])
    #@app_feature = AppFeature.new(params[:app_feature])

    respond_to do |format|
      if @app_feature.save
       # format.html { redirect_to @app_feature, notice: 'App feature was successfully created.' }
        format.html { redirect_to([@app, @app_feature]) }
        format.json { render json: @app_feature, status: :created, location: @app_feature }
      else
        format.html { render action: "new" }
        format.json { render json: @app_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_features/1
  # PUT /app_features/1.json
  def update
    @app_feature = @app.app_features.find(params[:id])
    #@app_feature = AppFeature.find(params[:id])

    respond_to do |format|
      if @app_feature.update_attributes(params[:app_feature])
        # format.html { redirect_to @app_feature, notice: 'App feature was successfully updated.' }
        format.html { redirect_to([@app, @app_feature]) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_features/1
  # DELETE /app_features/1.json
  def destroy
    @app_feature = @app.app_features.find(params[:id])
   # @app_feature = AppFeature.find(params[:id])
    @app_feature.destroy

    respond_to do |format|
      format.html { redirect_to(app_app_features_path(@app)) }
     # format.html { redirect_to app_features_url }
      format.json { head :ok }
    end
  end

  private

  def get_app
    @app = App.find(params[:app_id])
  end

  def fetch_features
    @features = Feature.all.collect {|f| [ f.name, f.id ] }
  end

  def fetch_feature_statuses
    @feature_statuses = FeatureStatus.all.collect {|f| [ f.name, f.id ] }
  end

  def fetch_sources
    @sources = Source.all.collect {|f| [ f.name, f.id ] }
  end
end
