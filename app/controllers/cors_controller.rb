class CorsController < ApplicationController
  # GET /cors
  # GET /cors.xml
  def index
    @cors = Cor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cors }
    end
  end

  # GET /cors/1
  # GET /cors/1.xml
  def show
    @cor = Cor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cor }
    end
  end

  # GET /cors/new
  # GET /cors/new.xml
  def new
    @cor = Cor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cor }
    end
  end

  # GET /cors/1/edit
  def edit
    @cor = Cor.find(params[:id])
  end

  # POST /cors
  # POST /cors.xml
  def create
    @cor = Cor.new(params[:cor])

    respond_to do |format|
      if @cor.save
        flash[:notice] = 'Cor was successfully created.'
        format.html { redirect_to(@cor) }
        format.xml  { render :xml => @cor, :status => :created, :location => @cor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cors/1
  # PUT /cors/1.xml
  def update
    @cor = Cor.find(params[:id])

    respond_to do |format|
      if @cor.update_attributes(params[:cor])
        flash[:notice] = 'Cor was successfully updated.'
        format.html { redirect_to(@cor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cors/1
  # DELETE /cors/1.xml
  def destroy
    @cor = Cor.find(params[:id])
    @cor.destroy

    respond_to do |format|
      format.html { redirect_to(cors_url) }
      format.xml  { head :ok }
    end
  end
end
