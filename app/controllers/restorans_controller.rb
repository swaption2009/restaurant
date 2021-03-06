class RestoransController < ApplicationController
  before_action :set_restoran, only: [:show, :edit, :update, :destroy]

  # GET /restorans
  # GET /restorans.json
  def index
    @organization = current_user.organizations.first.name
    if params[:id].present?
      @restorans = @current_tenant.restorans.find(params[:id])
    else
      @restorans = Restoran.all
    end
  end

  # GET /restorans/1
  # GET /restorans/1.json
  def show
    @menus = Menu.where(restoran_id: @restoran.id)
  end

  # GET /restorans/new
  def new
    @restoran = Restoran.new
  end

  # GET /restorans/1/edit
  def edit
  end

  # POST /restorans
  # POST /restorans.json
  def create
    @restoran = Restoran.new(restoran_params)
    @restoran.organization_id = current_user.organizations.first.id

    respond_to do |format|
      if @restoran.save
        format.html { redirect_to @restoran, notice: 'Restoran was successfully created.' }
        format.json { render :show, status: :created, location: @restoran }
      else
        format.html { render :new }
        format.json { render json: @restoran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restorans/1
  # PATCH/PUT /restorans/1.json
  def update
    respond_to do |format|
      if @restoran.update(restoran_params)
        format.html { redirect_to @restoran, notice: 'Restoran was successfully updated.' }
        format.json { render :show, status: :ok, location: @restoran }
      else
        format.html { render :edit }
        format.json { render json: @restoran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restorans/1
  # DELETE /restorans/1.json
  def destroy
    @restoran.destroy
    respond_to do |format|
      format.html { redirect_to restorans_url, notice: 'Restoran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restoran
      @restoran = Restoran.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restoran_params
      params.require(:restoran).permit(:name, :description, :slug, :organization_id)
    end
end
