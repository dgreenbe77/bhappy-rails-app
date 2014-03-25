class InfosController < ApplicationController
  before_action :set_info, only: [:show, :edit, :update, :destroy]

  # GET /infos
  # GET /infos.json
  def index
    @infos = Info.all
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
    @info = Info.find(params[:id])
    @user = current_user
    uri = URI::encode(@info.url)
    @response = Unirest::get("https://faceplusplus-faceplusplus.p.mashape.com/detection/detect?url=#{uri}&attribute=glass%2Cpose%2Cgender%2Cage%2Crace%2Csmiling",
    headers:{
      "X-Mashape-Authorization" => "ddgSpWEIQ6z8NMuVzNHb1gD7MjJjfkyA"
    })
  end

  # GET /infos/new
  def new
    @info = Info.new
  end

  # GET /infos/1/edit
  def edit
  end

  # POST /infos
  # POST /infos.json
  def create
    @info = Info.new(info_params)
    unless @info.url.blank?
      uri = URI::encode(@info.url)
      @response = Unirest::get("https://faceplusplus-faceplusplus.p.mashape.com/detection/detect?url=#{uri}&attribute=smiling",
      headers:{
        "X-Mashape-Authorization" => "ddgSpWEIQ6z8NMuVzNHb1gD7MjJjfkyA"
      })
      face = @response.body["face"]
      @info.smile = (face[0]["attribute"]["smiling"]["value"])/20
      # binding.pry
    end
    @user = current_user
    @user.infos << @info
    @user.save

    respond_to do |format|
      if @info.save
        format.html { redirect_to @info, notice: 'Info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @info }
      else
        format.html { render action: 'new' }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1
  # PATCH/PUT /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to @info, notice: 'Info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
      params.require(:info).permit(:happiness, :health, :wealth, :culture, :drama, :location, :spirituality, :relationships, :activity, :reflectivity, :civilization, :passion, :control, :satisfaction, :self_view, :url)
    end
end
