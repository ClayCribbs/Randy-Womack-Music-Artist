class StyleProfilesController < ApplicationController
  before_action :set_style_profile, only: [:show, :edit, :update, :destroy]

  # GET /style_profiles
  # GET /style_profiles.json
  def index
    @style_profiles = StyleProfile.all
  end

  # GET /style_profiles/1
  # GET /style_profiles/1.json
  def show
  end

  # GET /style_profiles/new
  def new
    @style_profile = StyleProfile.new
  end

  # GET /style_profiles/1/edit
  def edit
  end

  # POST /style_profiles
  # POST /style_profiles.json
  def create
    @style_profile = StyleProfile.new(style_profile_params)

    respond_to do |format|
      if @style_profile.save
        format.html { redirect_to @style_profile, notice: 'Style profile was successfully created.' }
        format.json { render :show, status: :created, location: @style_profile }
      else
        format.html { render :new }
        format.json { render json: @style_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /style_profiles/1
  # PATCH/PUT /style_profiles/1.json
  def update
    respond_to do |format|
      if @style_profile.update(style_profile_params)
        format.html { redirect_to @style_profile, notice: 'Style profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @style_profile }
      else
        format.html { render :edit }
        format.json { render json: @style_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /style_profiles/1
  # DELETE /style_profiles/1.json
  def destroy
    @style_profile.destroy
    respond_to do |format|
      format.html { redirect_to style_profiles_url, notice: 'Style profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style_profile
      @style_profile = StyleProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def style_profile_params
      params.require(:style_profile).permit(:col_width, :col_type, :col_height, :name)
    end
end
