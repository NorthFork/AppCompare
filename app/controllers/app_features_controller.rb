class AppFeaturesController < ApplicationController
  # GET /app_features
  # GET /app_features.json
  def index
    @app_features = AppFeature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_features }
    end
  end

  # GET /app_features/1
  # GET /app_features/1.json
  def show
    @app_feature = AppFeature.find(params[:id])

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
    @app_feature = AppFeature.find(params[:id])
  end

  # POST /app_features
  # POST /app_features.json
  def create
    @app_feature = AppFeature.new(params[:app_feature])

    respond_to do |format|
      if @app_feature.save
        format.html { redirect_to @app_feature, notice: 'App feature was successfully created.' }
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
    @app_feature = AppFeature.find(params[:id])

    respond_to do |format|
      if @app_feature.update_attributes(params[:app_feature])
        format.html { redirect_to @app_feature, notice: 'App feature was successfully updated.' }
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
    @app_feature = AppFeature.find(params[:id])
    @app_feature.destroy

    respond_to do |format|
      format.html { redirect_to app_features_url }
      format.json { head :ok }
    end
  end
end
