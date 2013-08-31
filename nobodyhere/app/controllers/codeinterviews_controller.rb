class CodeinterviewsController < ApplicationController
  # GET /codeinterviews
  # GET /codeinterviews.json
  def index
    @codeinterviews = Codeinterview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @codeinterviews }
    end
  end

  # GET /codeinterviews/1
  # GET /codeinterviews/1.json
  def show
    @codeinterview = Codeinterview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @codeinterview }
    end
  end

  # GET /codeinterviews/new
  # GET /codeinterviews/new.json
  def new
    @codeinterview = Codeinterview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @codeinterview }
    end
  end


  # POST /codeinterviews
  # POST /codeinterviews.json
  def create
    @codeinterview = Codeinterview.new(params[:codeinterview])
    @codeinterview .created_at = Time.now
    respond_to do |format|
      if @codeinterview.save
        format.html { redirect_to @codeinterview, notice: 'Codeinterview was successfully created.' }
        format.json { render json: @codeinterview, status: :created, location: @codeinterview }
      else
        format.html { render action: "new" }
        format.json { render json: @codeinterview.errors, status: :unprocessable_entity }
      end
    end
  end


end
