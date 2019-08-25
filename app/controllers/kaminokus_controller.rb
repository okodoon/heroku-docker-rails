class KaminokusController < ApplicationController
  before_action :set_kaminoku, only: [:show, :edit, :update, :destroy]

  # GET /kaminokus
  # GET /kaminokus.json
  def index
    @kaminokus = Kaminoku.all
  end

  # GET /kaminokus/1
  # GET /kaminokus/1.json
  def show
  end

  # GET /kaminokus/new
  def new
    @kaminoku = Kaminoku.new
  end

  # GET /kaminokus/1/edit
  def edit
  end

  # POST /kaminokus
  # POST /kaminokus.json
  def create
    @kaminoku = Kaminoku.new(kaminoku_params)

    respond_to do |format|
      if @kaminoku.save
        format.html { redirect_to @kaminoku, notice: 'Kaminoku was successfully created.' }
        format.json { render :show, status: :created, location: @kaminoku }
      else
        format.html { render :new }
        format.json { render json: @kaminoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kaminokus/1
  # PATCH/PUT /kaminokus/1.json
  def update
    respond_to do |format|
      if @kaminoku.update(kaminoku_params)
        format.html { redirect_to @kaminoku, notice: 'Kaminoku was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaminoku }
      else
        format.html { render :edit }
        format.json { render json: @kaminoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kaminokus/1
  # DELETE /kaminokus/1.json
  def destroy
    @kaminoku.destroy
    respond_to do |format|
      format.html { redirect_to kaminokus_url, notice: 'Kaminoku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaminoku
      @kaminoku = Kaminoku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaminoku_params
      params.require(:kaminoku).permit(:kamigo, :nakashichi, :shimogo)
    end
end
