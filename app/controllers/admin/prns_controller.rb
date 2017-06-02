class Admin::PrnsController < Admin::AdminController
  before_action :set_prn, only: [:show, :edit, :update, :destroy]
  before_action :set_patient
  before_action :set_history
  layout 'admin'

  # GET /prns
  # GET /prns.json
  def index
    @prns = @history.prns
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
    @prn = @history.prns.build(prn_params)
    #byebug
    respond_to do |format|
      if @prn.save
        format.html { redirect_to admin_patient_history_prns_path(@patient, @history), notice: 'Prn was successfully created.' }
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
        format.html { redirect_to admin_patient_history_prns_path(@patient, @history), notice: 'Prn was successfully updated.' }
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
      format.html { redirect_to admin_patient_history_prns_path(@patient, @history), notice: 'Prn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prn
      @prn = Prn.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_history
      @history = History.find(params[:history_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prn_params
      params.require(:prn).permit(
        :ordering_md,
        :date_ordered,
        :medication,
        :patient_name_prn,
        :mr_number_prn,
        :month_year_prn,
        :allergies_prn,
        :medication_name,
        :medication_dose,
        :medication_route,
        :medication_date_and_time,
        :medication_by,
        :nurse_signature_prn,
        :nurse_initials_prn
      )
    end
end
