class AppVersionsController < ApplicationController
  # GET /app_versions
  # GET /app_versions.xml

  before_filter :get_app

  def index
    @app_versions = @app.app_versions
    # @app_versions = AppVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @app_versions }
    end
  end

  # GET /app_versions/1
  # GET /app_versions/1.xml
  def show
    @app_version = @app.app_versions.find(params[:id])
    # @app_version = AppVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @app_version }
    end
  end

  # GET /app_versions/new
  # GET /app_versions/new.xml
  def new
    @app_version = @app.app_versions.build
    # @app_version = AppVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_version }
    end
  end

  # GET /app_versions/1/edit
  def edit
    @app_version = @app.app_versions.find(params[:id])
    # @app_version = AppVersion.find(params[:id])
  end

  # POST /app_versions
  # POST /app_versions.xml
  def create
    @app_version = @app.app_versions.build(params[:app_version])
    # @app_version = AppVersion.new(params[:app_version])

    respond_to do |format|
      if @app_version.save
        format.html { redirect_to([@app, @app_version], :notice => 'App Version was successfully created.') }
       # format.html { redirect_to(@app_version, :notice => 'App Version was successfully created.') }
        format.xml  { render :xml => @app_version, :status => :created, :location => @app_version }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @app_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /app_versions/1
  # PUT /app_versions/1.xml
  def update
    @app_version = @app.app_versions.find(params[:id])
    # @app_version = AppVersion.find(params[:id])

    respond_to do |format|
      if @app_version.update_attributes(params[:app_version])
        format.html { redirect_to([@app, @app_version], :notice => 'App Version was successfully updated.') }
       # format.html { redirect_to(@app_version, :notice => 'App version was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @app_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /app_versions/1
  # DELETE /app_versions/1.xml
  def destroy
    @app_version = @app.app_versions.find(params[:id])
    # @app_version = AppVersion.find(params[:id])
    @app_version.destroy

    respond_to do |format|
      format.html { redirect_to(app_app_versions_path(@app)) }
     # format.html { redirect_to(app_versions_url) }
      format.xml  { head :ok }
    end
  end

  private

  def get_app
    @app = App.find(params[:app_id])
  end
end
