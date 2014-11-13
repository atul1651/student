class UdaysController < ApplicationController
  before_action :set_uday, only: [:show, :edit, :update, :destroy]

  # GET /udays
  # GET /udays.json
  def index
    @udays = Uday.all
  end

  # GET /udays/1
  # GET /udays/1.json
  def show
  end

  # GET /udays/new
  def new
    @uday = Uday.new
  end

  # GET /udays/1/edit
  def edit
  end

  # POST /udays
  # POST /udays.json
  def create
    @uday = Uday.new(uday_params)

    respond_to do |format|
      if @uday.save
        format.html { redirect_to @uday, notice: 'Uday was successfully created.' }
        format.json { render :show, status: :created, location: @uday }
      else
        format.html { render :new }
        format.json { render json: @uday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /udays/1
  # PATCH/PUT /udays/1.json
  def update
    respond_to do |format|
      if @uday.update(uday_params)
        format.html { redirect_to @uday, notice: 'Uday was successfully updated.' }
        format.json { render :show, status: :ok, location: @uday }
      else
        format.html { render :edit }
        format.json { render json: @uday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /udays/1
  # DELETE /udays/1.json
  def destroy
    @uday.destroy
    respond_to do |format|
      format.html { redirect_to udays_url, notice: 'Uday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uday
      @uday = Uday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uday_params
      params.require(:uday).permit(:name, :rno)
    end
end
