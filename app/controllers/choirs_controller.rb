class ChoirsController < ApplicationController
  respond_to :html, :js

  # POST /choirs
  # POST /choirs.json
  def create
    @choir = Choir.new(choir_params)

    respond_to do |format|
      if @choir.save
        format.html { redirect_to root_path, notice: 'Vielen Dank! Dein Chor wird nach einer Überprüfung zur Karte hinzugefügt.' }
        format.json { render :show, status: :created, location: @choir }
        format.js { render action: 'create_suc'}
      else
        format.html { render action: :new }
        format.json { render json: @choir.errors, status: :unprocessable_entity }
        format.js { render action: 'create_fail' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choir
      @choir = Choir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choir_params
      params
        .require(:choir)
        .permit(:name,
                :location_name,
                :street_name,
                :category_id,
                :house_no,
                :zipcode,
                :city,
                :country,
                :website,
                :latitude,
                :longitude,
                :image,
                :approved)
    end
end
