class Admin::MarsController < Admin::AdminController
  before_action :set_mar, only: [:show, :edit, :update, :destroy]
  before_action :set_patient
  before_action :set_history
  layout 'admin'

  # GET /mars
  # GET /mars.json
  def index
    @mars = @history.mars
  end

  # GET /mars/1
  # GET /mars/1.json
  def show
  end

  # GET /mars/new
  def new
    @mar = Mar.new
    @doctors = Doctor.all
  end

  # GET /mars/1/edit
  def edit
    @doctors = Doctor.all
    @nurse_activities = @mar.nurse_activities
  end

  # POST /mars
  # POST /mars.json
  def create
    @mar = @history.mars.build(mar_params)

    respond_to do |format|
      if @mar.save
        format.html { redirect_to admin_patient_history_mars_path(@patient, @history), notice: 'MAR was successfully created.' }
        format.json { render :show, status: :created, location: @mar }
      else
        format.html { render :new }
        format.json { render json: @mar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mars/1
  # PATCH/PUT /mars/1.json
  def update
    respond_to do |format|
      if @mar.update(mar_params)
        format.html { redirect_to edit_admin_patient_history_mar_path(@patient, @history, @mar), notice: 'MAR was successfully updated.' }
        format.json { render :show, status: :ok, location: @mar }
      else
        format.html { render :edit }
        format.json { render json: @mar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mars/1
  # DELETE /mars/1.json
  def destroy
    @mar.destroy
    respond_to do |format|
      format.html { redirect_to admin_patient_history_mars_path(@patient, @history), notice: 'MAR was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mar
      @mar = Mar.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_history
      @history = History.find(params[:history_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mar_params
      params.require(:mar).permit(
        :name,
        :month_year,
        :mr_number,
        :allergies,
        :medication_mar,
        :prescribed_by,
        :date_and_time,
        :order_date,
        :order_mars,
        :order_prescribed_by,
        :prescriber_initials,
        :nurse_signature,
        :nurse_initials,
        :work_shift,
        :date_of_activity
      )
    end
end
