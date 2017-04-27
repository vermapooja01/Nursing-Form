class LabsController < ApplicationController
  before_action :set_lab, only: [:show, :edit, :update, :destroy]
  before_action :set_history
  before_action :set_patient


  # GET /labs
  # GET /labs.json
  def index
    @labs = Lab.all
  end

  # GET /labs/1
  # GET /labs/1.json
  def show
  end

  # GET /labs/new
  def new
    @lab = Lab.new
  end

  # GET /labs/1/edit
  def edit
  end

  # POST /labs
  # POST /labs.json
  def create
    @lab = Lab.new(lab_params)

    respond_to do |format|
      if @lab.save
        format.html { redirect_to @lab, notice: 'Lab was successfully created.' }
        format.json { render :show, status: :created, location: @lab }
      else
        format.html { render :new }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labs/1
  # PATCH/PUT /labs/1.json
  def update
    respond_to do |format|
      if @lab.update(lab_params)
        format.html { redirect_to @lab, notice: 'Lab was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab }
      else
        format.html { render :edit }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labs/1
  # DELETE /labs/1.json
  def destroy
    @lab.destroy
    respond_to do |format|
      format.html { redirect_to labs_url, notice: 'Lab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = Lab.find(params[:id])
    end
    def set_history
      @history = History.find(params[:history_id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_params
      params.require(:lab).permit(
      :orders,
      :history_id,
      :date_and_time_drawn,
      :name,
      :age,
      :gender,
      :coagulation_therapy,
      :patient_fasting,
      :ventilator,
      :urinalysis,
      :wbc,
      :rbc,
      :hgb,
      :hct,
      :plt,
      :glucose,
      :bun,
      :co2,
      :chloride,
      :creatinine,
      :sodium,
      :potassium,
      :magnesium,
      :phosphorus,
      :calcium,
      :appearance,
      :sp_gravity,
      :color_ua,
      :ph,
      :protein,
      :glucose_ua,
      :ketones,
      :bilirubin,
      :occult_blood,
      :wbc_ua,
      :rbc_ua,
      :ck,
      :ck_mb,
      :trop,
      :myoglobin,
      :pt,
      :ptt,
      :inr,
      :alkaline_phos,
      :albumin,
      :bilirubin_direct,
      :bilirubin_total,
      :ast,
      :alt,
      :cholesterol,
      :triglycerides,
      :hdl,
      :ldl,
      :digoxin,
      :dilantin,
      :gentamicin,
      :gentamicin_trough,
      :vancomycin,
      :vancomycin_trough,
      :ph_abg,
      :pco2,
      :hco3,
      :po2,
      :fio2,
      :lactic_acid,
      :bnp,
      :patient_lab_name,
      :mr_number_lab,
      :room_number
    )
    end
end
