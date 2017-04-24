class PrnsController < ApplicationController
  before_action :set_prn, only: [:show, :edit, :update, :destroy]


  # GET /prns
  # GET /prns.json
  def index
    @prns = Prn.all
  end

  # GET /prns/1
  # GET /prns/1.json
  def show
  end

  # GET /prns/new
  def new
    @prn = Prn.new
  end

  # GET /prns/1/edit
  def edit
  end

  # POST /prns
  # POST /prns.json
  def create
    @prn = Prn.new(prn_params)

    respond_to do |format|
      if @prn.save
        format.html { redirect_to @prn, notice: 'Prn was successfully created.' }
        format.json { render :show, status: :created, location: @prn }
      else
        format.html { render :new }
        format.json { render json: @prn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prns/1
  # PATCH/PUT /prns/1.json
  def update
    respond_to do |format|
      if @prn.update(prn_params)
        format.html { redirect_to @prn, notice: 'Prn was successfully updated.' }
        format.json { render :show, status: :ok, location: @prn }
      else
        format.html { render :edit }
        format.json { render json: @prn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prns/1
  # DELETE /prns/1.json
  def destroy
    @prn.destroy
    respond_to do |format|
      format.html { redirect_to prns_url, notice: 'Prn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prn
      @prn = Prn.find(params[:id])
    end

    

    # Never trust parameters from the scary internet, only allow the white list through.
    def prn_params
      params.require(:prn).permit(:ordering_md, :date_ordered, :medication)
    end
end
