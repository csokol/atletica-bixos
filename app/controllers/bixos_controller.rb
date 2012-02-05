class BixosController < ApplicationController

  before_filter :authenticate
  def authenticate
    authenticate_or_request_with_http_basic do |name, pass|
      name == 'aaamat' && pass == 'costinha'
    end
  end

  # GET /bixos
  # GET /bixos.xml
  def index
    @cadastrados = Bixo.find(:all, :conditions => "sexo_id IS NOT null")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bixos }
    end
  end

  # GET /bixos/1
  # GET /bixos/1.xml
  def show
    @bixo = Bixo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bixo }
    end
  end

  # GET /bixos/new
  # GET /bixos/new.xml
  def new
    @bixo = Bixo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bixo }
    end
  end

  # POST /bixos
  # POST /bixos.xml
  def create
    @bixo = Bixo.new(params[:bixo])
    modalidades_definitivas = []
    sexo = Sexo.find_by_id(@bixo.sexo_id)

    @bixo.modalidades.each do |modalidade|
      unless modalidade.sexo == 0 and modalidade.nome === "FutCampo"
        modalidade =  Modalidade.find_by_nome_and_sexo(modalidade.nome, sexo.id)
      end
      unless @bixo.sexo_id == 2 and modalidade.nome === "FutCampo"
        modalidades_definitivas << modalidade
      end
    end
    @bixo.modalidades = modalidades_definitivas

    respond_to do |format|
      if @bixo.save
        flash[:notice] = 'Bixo was successfully created.'
        format.html { redirect_to(@bixo) }
        format.xml  { render :xml => @bixo, :status => :created, :location => @bixo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bixo.errors, :status => :unprocessable_entity }
      end
    end
  end


  # GET /bixos/1/edit
  def edit
    @bixo = Bixo.find(params[:id])
  end

  # PUT /bixos/1
  # PUT /bixos/1.xml
  def update

    params[:bixo][:modalidade_ids] ||= []
    @bixo = Bixo.find(params[:id])


    modalidades_definitivas = []
    sexo = Sexo.find_by_id(params[:bixo][:sexo_id])

    puts ">>>>>>>>>>>>>>>"

    params[:bixo][:modalidade_ids].each do |modalidade|
      modalidade = Modalidade.find_by_id modalidade
      unless modalidade.sexo == 0
        modalidade =  Modalidade.find_by_nome_and_sexo(modalidade.nome, sexo.id)
        puts modalidade.sexo
      end

        puts modalidade.id
        modalidades_definitivas << modalidade

    end
    params[:bixo][:modalidade_ids] = modalidades_definitivas.collect{|m| m.id}

    puts "<<<<<<<<<<<<<<<<"

    respond_to do |format|
      if @bixo.update_attributes(params[:bixo])
        flash[:notice] = 'Bixo was successfully updated.'
        format.html { redirect_to(@bixo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bixo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bixos/1
  # DELETE /bixos/1.xml
  def destroy
    @bixo = Bixo.find(params[:id])
    @bixo.destroy

    respond_to do |format|
      format.html { redirect_to(bixos_url) }
      format.xml  { head :ok }
    end
  end

  def search

    palavras = params[:nome].split
		text = []
		palavras.each do |p|
			text << "nome LIKE '%#{p}%'"
		end

  	bixos = Bixo.find(:all, :conditions => text.join(' AND '))


    render :partial => 'list', :locals => {:bixos => bixos, :completa => false} , :update => 'search'
  end

end
