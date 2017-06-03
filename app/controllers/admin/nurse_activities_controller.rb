class Admin::NurseActivitiesController < Admin::AdminController
  before_action :set_nurse_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_mar
  before_action :set_patient
  before_action :set_history
  layout 'admin'

  # GET /mars
  # GET /mars.json
  def index
    @nurse_activities = @mar.nurse_activities
  end

  # GET /mars/1
  # GET /mars/1.json
  def show
  end

  # GET /mars/new
  def new
    @nurse_activity = NurseActivity.new
  end

  # GET /mars/1/edit
  def edit
  end

  # POST /mars
  # POST /mars.json
  def create
    @nursing_activity = NurseActivity.new(nurse_activity_params)

    respond_to do |format|
      if @nursing_activity.save
        format.html { redirect_to admin_patient_history_mars_path(@patient, @history), notice: 'Nurse activity was successfully created.' }
        format.json { render :show, status: :created, location: @nursing_activity }
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
      if @nurse_activity.update(mar_params)
        format.html { redirect_to edit_admin_patient_history_mar_path(@patient, @history, @mar), notice: 'Nurse activity was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /mars/1
  # DELETE /mars/1.json
  def destroy
    @nurse_activity.destroy
    respond_to do |format|
      format.html { redirect_to admin_patient_history_mars_path(@patient, @history), notice: 'Nurse activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mar
      @mar = Mar.find(params[:mar_id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_history
      @history = History.find(params[:history_id])
    end

    def set_nurse_activity
      @nurse_activity = NurseActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nurse_activity_params
      params.require(:nurse_activity).permit(
        :shift_number,
        :initials,
        :mar_id,
        :date_of_activity
      )
    end
end
