class AppProductsController < ApplicationController
  # GET /app_products
  # GET /app_products.xml

  before_filter :get_app
  before_filter :fetch_products, :only => [:edit, :update, :new, :create]

  def index
    @app_products = @app.app_products
    #@app_products = AppProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @app_products }
    end
  end

  # GET /app_products/1
  # GET /app_products/1.xml
  def show
    @app_product = @app.app_products.find(params[:id])
    #@app_product = AppProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @app_product }
    end
  end

  # GET /app_products/new
  # GET /app_products/new.xml
  def new
    @app_product = @app.app_products.build
    #@app_product = AppProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_product }
    end
  end

  # GET /app_products/1/edit
  def edit
    @app_product = @app.app_products.find(params[:id])
    #@app_product = AppProduct.find(params[:id])
  end

  # POST /app_products
  # POST /app_products.xml
  def create
    @app_product = @app.app_products.build(params[:app_product])
    #@app_product = AppProduct.new(params[:app_product])

    respond_to do |format|
      if @app_product.save
        format.html { redirect_to([@app, @app_product]) }
        format.xml  { render :xml => @app_product, :status => :created, :location => @app_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @app_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /app_products/1
  # PUT /app_products/1.xml
  def update
    @app_product = @app.app_products.find(params[:id])
    #@app_product = AppProduct.find(params[:id])

    respond_to do |format|
      if @app_product.update_attributes(params[:app_product])
        format.html { redirect_to([@app, @app_feature]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @app_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /app_products/1
  # DELETE /app_products/1.xml
  def destroy
    @app_product = @app.app_products.find(params[:id])
    #@app_product = AppProduct.find(params[:id])
    @app_product.destroy

    respond_to do |format|
      format.html { redirect_to(app_app_products_path(@app), :notice => 'Product was successfully removed.') }
      format.xml  { head :ok }
    end
  end

  private

  def get_app
    @app = App.find(params[:app_id])
  end

  def fetch_products
    @products = Product.all.collect {|f| [ f.name, f.id ] }
  end
end
