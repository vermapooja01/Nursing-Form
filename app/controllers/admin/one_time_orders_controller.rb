class Admin::OneTimeOrdersController < Admin::AdminController
  before_action :set_patient
  before_action :set_history
  before_action :set_one_time_order, only: [:show]

  layout 'admin'

  def index
    @one_time_order = @history.one_time_orders
  end

  def show
  end

  def new
    @one_time_order = OneTimeOrder.new
  end

  def edit
  end

  def create
    @one_time_order = OneTimeOrder.new(one_time_order_params)

    respond_to do |format|
      if @one_time_order.save
        format.html { redirect_to admin_patient_history_mars_path(@patient, @history), notice: 'One Time Order was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @one_time_order.update(one_time_order_params)
        format.html { redirect_to admin_patient_history_mars_path(@patient, @history, @one_time_order), notice: 'MAR was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @one_time_order.destroy
    respond_to do |format|
      format.html { redirect_to admin_patient_history_mars_path(@patient, @history), notice: 'MAR was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_one_time_order
      @one_time_order = OneTimeOrder.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_history
      @history = History.find(params[:history_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def one_time_order_params
      params.require(:one_time_order).permit(
        :order_date,
        :order_mars,
        :order_prescribed_by,
        :prescriber_initials,
        :nurse_signature,
        :nurse_initials,
        :work_shift,
        :history_id
      )
    end
end
