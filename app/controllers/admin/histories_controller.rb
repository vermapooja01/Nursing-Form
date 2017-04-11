class Admin::HistoriesController < Admin::AdminController
  before_action :set_history, only: [:show, :edit, :update, :destroy]
  before_action :set_patient
  layout 'admin'

  # GET /histories
  # GET /histories.json
  def index
    @histories = @patient.histories
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
    @history = @patient.histories.build(history_params)

    respond_to do |format|
      if @history.save
        format.html { redirect_to admin_patient_history_path(@patient, @history), notice: 'Patient history was successfully created.' }
        format.json { render :show, status: :created, location: @history }
      else
        byebug
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
        format.html { redirect_to admin_patient_history_path(@patient, @history), notice: 'History was successfully updated.' }
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
      format.html { redirect_to admin_patient_histories, notice: 'History was successfully destroyed.' }
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
      params.require(:history).permit(:name, :date_of_admission, :mr_number)
    end
end
