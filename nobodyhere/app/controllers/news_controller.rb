class NewsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
    @start = params[:start]?params[:start]:"0"
    @start = @start.to_i
    @news = New.order('created_at DESC').offset(@start).limit(50).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
    @news = New.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news }
    end
  end

  # GET /news/new
  # GET /news/new.json
  def new
    @news = New.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news }
    end
  end

  # GET /news/1/edit
  def edit
    @news = New.find(params[:id])
  end

  # POST /news
  # POST /news.json
  def create
    @news = New.new(params[:news])

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'New was successfully created.' }
        format.json { render json: @news, status: :created, location: @news }
      else
        format.html { render action: "new" }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def jump
    @news = New.find(params[:id])
    @news.view_number = @news.view_number ? @news.view_number + 1 : 1
    @news.save
    redirect_to @news.web_urls
  end
  # PUT /news/1
  # PUT /news/1.json
  def update
    @news = New.find(params[:id])

    respond_to do |format|
      if @news.update_attributes(params[:news])
        format.html { redirect_to @news, notice: 'New was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news = New.find(params[:id])
    @news.destroy

    respond_to do |format|
      format.html { redirect_to news_url }
      format.json { head :no_content }
    end
  end
end
