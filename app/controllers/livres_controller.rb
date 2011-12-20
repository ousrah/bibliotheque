class LivresController < ApplicationController
  # GET /livres
  # GET /livres.json
  def index
    @livres = Livre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livres }
    end
  end

  # GET /livres/1
  # GET /livres/1.json
  def show
    @livre = Livre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livre }
    end
  end

  # GET /livres/new
  # GET /livres/new.json
  def new
    @livre = Livre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livre }
    end
  end

  # GET /livres/1/edit
  def edit
    @livre = Livre.find(params[:id])
  end

  # POST /livres
  # POST /livres.json
  def create
    @livre = Livre.new(params[:livre])

    respond_to do |format|
      if @livre.save
        format.html { redirect_to @livre, notice: 'Livre was successfully created.' }
        format.json { render json: @livre, status: :created, location: @livre }
      else
        format.html { render action: "new" }
        format.json { render json: @livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /livres/1
  # PUT /livres/1.json
  def update
    @livre = Livre.find(params[:id])

    respond_to do |format|
      if @livre.update_attributes(params[:livre])
        format.html { redirect_to @livre, notice: 'Livre was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livres/1
  # DELETE /livres/1.json
  def destroy
    @livre = Livre.find(params[:id])
    @livre.destroy

    respond_to do |format|
      format.html { redirect_to livres_url }
      format.json { head :ok }
    end
  end
end
