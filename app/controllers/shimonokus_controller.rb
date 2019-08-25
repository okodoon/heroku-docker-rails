class ShimonokusController < ApplicationController
  before_action :set_shimonoku, only: [:show, :edit, :update, :destroy]

  # GET /shimonokus
  # GET /shimonokus.json
  def index
    @shimonokus = Shimonoku.all
  end

  # GET /shimonokus/1
  # GET /shimonokus/1.json
  def show
  end

  # GET /shimonokus/new
  def new
    @shimonoku = Shimonoku.new
  end

  # GET /shimonokus/1/edit
  def edit
  end

  # POST /shimonokus
  # POST /shimonokus.json
  def create
    @shimonoku = Shimonoku.new(shimonoku_params)

    respond_to do |format|
      if @shimonoku.save
        format.html { redirect_to @shimonoku, notice: 'Shimonoku was successfully created.' }
        format.json { render :show, status: :created, location: @shimonoku }
      else
        format.html { render :new }
        format.json { render json: @shimonoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shimonokus/1
  # PATCH/PUT /shimonokus/1.json
  def update
    respond_to do |format|
      if @shimonoku.update(shimonoku_params)
        format.html { redirect_to @shimonoku, notice: 'Shimonoku was successfully updated.' }
        format.json { render :show, status: :ok, location: @shimonoku }
      else
        format.html { render :edit }
        format.json { render json: @shimonoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shimonokus/1
  # DELETE /shimonokus/1.json
  def destroy
    @shimonoku.destroy
    respond_to do |format|
      format.html { redirect_to shimonokus_url, notice: 'Shimonoku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shimonoku
      @shimonoku = Shimonoku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shimonoku_params
      params.require(:shimonoku).permit(:kamishichi, :shimoshichi)
    end
end
