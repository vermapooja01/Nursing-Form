class Admin::LabsController < Admin::AdminController
  before_action :set_lab, only: [:show, :edit, :update, :destroy]
  before_action :set_patient
  before_action :set_history
  layout 'admin'

  # GET /labs
  # GET /labs.json
  def index
    @labs = @history.labs
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
    @lab = @history.labs.build(lab_params)

    respond_to do |format|
      if @lab.save
        format.html { redirect_to admin_patient_history_labs_path(@patient, @history), notice: 'Lab was successfully created.' }
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
        format.html { redirect_to edit_admin_patient_history_lab_path(@patient, @history, @lab), notice: 'Lab was successfully updated.' }
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
      format.html { redirect_to admin_patient_history_labs_path(@patient, @history), notice: 'Lab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = Lab.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_history
      @history = History.find(params[:history_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_params
      params.require(:lab).permit(
        :orders,
        :date_and_time_drawn,
        :orders,
        :date_and_time_drawn,
        :history_id,
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
