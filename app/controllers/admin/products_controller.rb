class Admin::ProductsController < ApplicationController
  # GET /admin/products
  # GET /admin/products.xml
  def index
    @admin_products = Admin::Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_products }
    end
  end

  # GET /admin/products/1
  # GET /admin/products/1.xml
  def show
    @admin_product = Admin::Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_product }
    end
  end

  # GET /admin/products/new
  # GET /admin/products/new.xml
  def new
    @admin_product = Admin::Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_product }
    end
  end

  # GET /admin/products/1/edit
  def edit
    @admin_product = Admin::Product.find(params[:id])
  end

  # POST /admin/products
  # POST /admin/products.xml
  def create
    @admin_product = Admin::Product.new(params[:admin_product])

    respond_to do |format|
      if @admin_product.save
        format.html { redirect_to(@admin_product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @admin_product, :status => :created, :location => @admin_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/products/1
  # PUT /admin/products/1.xml
  def update
    @admin_product = Admin::Product.find(params[:id])

    respond_to do |format|
      if @admin_product.update_attributes(params[:admin_product])
        format.html { redirect_to(@admin_product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.xml
  def destroy
    @admin_product = Admin::Product.find(params[:id])
    @admin_product.destroy

    respond_to do |format|
      format.html { redirect_to(admin_products_url) }
      format.xml  { head :ok }
    end
  end
end
