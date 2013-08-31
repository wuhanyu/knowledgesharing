class InformationController < ApplicationController
  # GET /information
  # GET /information.json
  def index
    @information = Information.order('created_at DESC').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @information }
    end
  end

  # GET /information/1
  # GET /information/1.json
  def show
    @information = Information.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @information }
    end
  end

  # GET /information/new
  # GET /information/new.json
  def new
    @information = Information.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @information }
    end
  end



  # POST /information
  # POST /information.json
  def create
    @information = Information.new(params[:information])
    @information.created_at = Time.now
    
    respond_to do |format|
      if @information.save
        format.html { redirect_to @information, notice: 'Information was successfully created.' }
        format.json { render json: @information, status: :created, location: @information }
      else
        format.html { render action: "new" }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end
end
