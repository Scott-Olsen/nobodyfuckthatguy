class GuysController < ApplicationController
  # GET /guys
  # GET /guys.json
  def index
    @guys = Guy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @guys }
    end
  end

  # GET /guys/1
  # GET /guys/1.json
  def show
    @guy = Guy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @guy }
    end
  end

  # GET /guys/new
  # GET /guys/new.json
  def new
    @guy = Guy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @guy }
    end
  end

  # GET /guys/1/edit
  def edit
    @guy = Guy.find(params[:id])
  end

  # POST /guys
  # POST /guys.json
  def create
    @guy = Guy.new(params[:guy])

    respond_to do |format|
      if @guy.save
        format.html { redirect_to @guy, :notice => 'Guy was successfully created.' }
        format.json { render :json => @guy, :status => :created, :location => @guy }
      else
        format.html { render :action => "new" }
        format.json { render :json => @guy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /guys/1
  # PUT /guys/1.json
  def update
    @guy = Guy.find(params[:id])

    respond_to do |format|
      if @guy.update_attributes(params[:guy])
        format.html { redirect_to @guy, :notice => 'Guy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @guy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /guys/1
  # DELETE /guys/1.json
  def destroy
    @guy = Guy.find(params[:id])
    @guy.destroy

    respond_to do |format|
      format.html { redirect_to guys_url }
      format.json { head :no_content }
    end
  end
end
