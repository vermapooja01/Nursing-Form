class PatientsController < ApplicationController
  before_action :logged_in_user
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @histories = @patient.histories
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(
      :name,
      :age,
      :gender,
      :orders,
      :date_and_time_drawn,
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
