class ChoirsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_choir, only: [:show, :edit, :update, :destroy]

  # GET /choirs
  # GET /choirs.json
  def index
    @choirs = Choir.all
  end

  # GET /choirs/1
  # GET /choirs/1.json
  def show
  end

  # GET /choirs/new
  def new
    @choir = Choir.new
  end

  # GET /choirs/1/edit
  def edit
  end

  # POST /choirs
  # POST /choirs.json
  def create
    @choir = Choir.new(choir_params)

    respond_to do |format|
      if @choir.save
        format.html { redirect_to root_path, notice: 'Vielen Dank! Dein Chor wird nach einer Überprüfung zur Karte hinzugefügt.' }
        format.json { render :show, status: :created, location: @choir }
      else
        format.html { render :new }
        format.json { render json: @choir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choirs/1
  # PATCH/PUT /choirs/1.json
  def update
    respond_to do |format|
      if @choir.update(choir_params)
        format.html { redirect_to @choir, notice: 'Choir was successfully updated.' }
        format.json { render :show, status: :ok, location: @choir }
      else
        format.html { render :edit }
        format.json { render json: @choir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choirs/1
  # DELETE /choirs/1.json
  def destroy
    @choir.destroy
    respond_to do |format|
      format.html { redirect_to choirs_url, notice: 'Choir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choir
      @choir = Choir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choir_params
      params.require(:choir).permit(:name, :location_name, :street_name, :category_id, :house_no, :zipcode, :city, :country, :website, :latitude, :longitude, :image, :approved)
    end
end
