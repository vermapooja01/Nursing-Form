class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]
  before_action :set_patient


  # GET /histories
  # GET /histories.json
  def index
    @histories = History.all
  end

  # GET /histories/1
  # GET /histories/1.json
  def show
  end

  # GET /histories/new
  def new
    @history = History.new
  end

  # GET /histories/1/edit
  def edit
  end

  # POST /histories
  # POST /histories.json
  def create
    @history = History.new(history_params)

    respond_to do |format|
      if @history.save
        format.html { redirect_to @history, notice: 'History was successfully created.' }
        format.json { render :show, status: :created, location: @history }
      else
        format.html { render :new }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /histories/1
  # PATCH/PUT /histories/1.json
  def update
    respond_to do |format|
      if @history.update(history_params)
        format.html { redirect_to @history, notice: 'History was successfully updated.' }
        format.json { render :show, status: :ok, location: @history }
      else
        format.html { render :edit }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /histories/1
  # DELETE /histories/1.json
  def destroy
    @history.destroy
    respond_to do |format|
      format.html { redirect_to histories_url, notice: 'History was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def history_params
      params.require(:history).permit(
        :name,
        :date_of_admission,
        :mr_number,
        :service,
        :date_of_birth,
        :marital_status_history,
        :address,
        :phone,
        :height,
        :weight,
        :occupation,
        :religion,
        :allergies,
        :cultural_spiritual_practice,
        :code_status,
        :language,
        :advance_directive,
        :barriers_to_communication,
        :admitting_diagonosis,
        :isolation_precaution,
        :medical_history,
        :surgical_history,
        :current_medications,
        :diet_history,
        :tobacco_use,
        :alcohol_drug_use,
        :immunizations,
        :family_history,
        :living_arrangements,
        :social_hx,
        :hobbies,
        :daily_weekly_routine,
      )
    end
end
