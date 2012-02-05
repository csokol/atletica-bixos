class CamisetasController < ApplicationController
  # GET /camisetas
  # GET /camisetas.xml
  def index
    @camisetas = Camiseta.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @camisetas }
    end
  end

  # GET /camisetas/1
  # GET /camisetas/1.xml
  def show
    @camiseta = Camiseta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @camiseta }
    end
  end

  # GET /camisetas/new
  # GET /camisetas/new.xml
  def new
    @camiseta = Camiseta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @camiseta }
    end
  end

  # GET /camisetas/1/edit
  def edit
    @camiseta = Camiseta.find(params[:id])
  end

  # POST /camisetas
  # POST /camisetas.xml
  def create
    @camiseta = Camiseta.new(params[:camiseta])

    respond_to do |format|
      if @camiseta.save
        flash[:notice] = 'Camiseta was successfully created.'
        format.html { redirect_to(@camiseta) }
        format.xml  { render :xml => @camiseta, :status => :created, :location => @camiseta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @camiseta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /camisetas/1
  # PUT /camisetas/1.xml
  def update
    @camiseta = Camiseta.find(params[:id])

    respond_to do |format|
      if @camiseta.update_attributes(params[:camiseta])
        flash[:notice] = 'Camiseta was successfully updated.'
        format.html { redirect_to(@camiseta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @camiseta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /camisetas/1
  # DELETE /camisetas/1.xml
  def destroy
    @camiseta = Camiseta.find(params[:id])
    @camiseta.destroy

    respond_to do |format|
      format.html { redirect_to(camisetas_url) }
      format.xml  { head :ok }
    end
  end
end
