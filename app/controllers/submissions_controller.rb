class SubmissionsController < ApplicationController
  before_action :set_submission, :logged_in_user, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    # Create a brand new submission and set the state of it to be incomplete
    @submission = Submission.new(:completed => false)
  end

  # GET /submissions/1/edit
  def edit
  end

  def complete_submission
    @submission = Submission.find(params[:submission_id])
    # Set the submission to be completed
    @submission.completed = true;
    # Save the submission
    @submission.save
    # Redirect to the logged in home with notice of success
    respond_to do |format|
      format.html { redirect_to submissions_path, notice: 'You have successfully completed the entry form!' }
    end
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)
    respond_to do |format|
      if @submission.save
        format.html { redirect_to edit_submission_path(@submission, :tab => params[:selected_tab]), notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @submission }
      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      byebug
      if @submission.update(submission_params)
        format.html { redirect_to edit_submission_path(@submission, :tab => params[:selected_tab]), notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(
        :patient_initials,
        :user_id,
        :age,
        :gender,
        :admitting_primary_medical_diagnosis,
        :week,
        :pupils_brisk_left,
        :pupils_sluggish_left,
        :pupils_fixed_left,
        :pupils_size_left,
        :pupils_brisk_right,
        :pupils_sluggish_right,
        :pupils_fixed_right,
        :pupils_size_right,
        :best_eye_opening_response,
        :best_verbal_response,
        :best_motor_response,
        :patient_total_score,
        :gag_reflex,
        :speech,
        :hearing,
        :face,
        :tongue,
        :strength_weakness_rue,
        :strength_weakness_lue,
        :strength_weakness_rle,
        :strength_weakness_lle,
        :strength_contracture_rue,
        :strength_contracture_lue,
        :strength_contracture_rle,
        :strength_contracture_lle,
        :strength_flaccid_rue,
        :strength_flaccid_lue,
        :strength_flaccid_rle,
        :strength_flaccid_lle,
        :strength_spastic_rue,
        :strength_spastic_lue,
        :strength_spastic_rle,
        :strength_spastic_lle,
        :strength_paresis_rue,
        :strength_paresis_lue,
        :strength_paresis_rle,
        :strength_paresis_lle,
        :strength_other_rue,
        :strength_other_lue,
        :strength_other_rle,
        :strength_other_lle,
        :strength_comments,
        :marital_status,
        :spiritual_needs,
        :other_spiritual_needs,
        :bereaving_support_given,
        :hospice_care,
        :substance_abuse_history,
        :substance_abuse_history_type,
        :social_support,
        :other_social_support,
        :advanced_directive,
        :resuscitation_status,
        :other_resuscitation_status,
        :movement,
        :gait,
        :grip,
        :icp_device,
        :prescribed_level,
        :monitor,
        :ventilation,
        :pattern,
        :breath_sounds,
        :diminshed,
        :diminished_where,
        :absent,
        :absent_where,
        :crackles,
        :crackles_where,
        :wheezes,
        :wheezes_where,
        :stridor,
        :stridor_where,
        :ronchi,
        :ronchi_where,
        :cough,
        :sputum,
        :respiratory_color,
        :other_color,
        :consistency,
        :other_consistency,
        :amount,
        :amount_comments,
        :o2_protocol_in_place,
        :o2_nc,
        :o2_mask,
        :mode,
        :tv,
        :fio2,
        :rr,
        :ps,
        :peep,
        :peak_airway_pressure,
        :other_settings,
        :ett_placement,
        :trach_not_applicable,
        :trach_type,
        :trach_size,
        :chest_tube,
        :location_where,
        :trach_type,
        :suction_type,
        :emphysema_where,
        :chest_tube_comments,
        :pulses_absent,
        :pulses_weak,
        :pulses_normal,
        :pulses_full,
        :pulses_bounding,
        :pulses_dp_doppler,
        :radial_absent,
        :radial_weak,
        :radial_normal,
        :radial_full,
        :radial_bounding,
        :radial_dp_doppler,
        :femoral_absent,
        :femoral_weak,
        :femoral_normal,
        :femoral_full,
        :femoral_bounding,
        :femoral_dp_doppler,
        :popliteal_absent,
        :popliteal_weak,
        :popliteal_normal,
        :popliteal_full,
        :popliteal_bounding,
        :popliteal_dp_doppler,
        :dorsalis_pedis_absent,
        :dorsalis_pedis_weak,
        :dorsalis_pedis_normal,
        :dorsalis_pedis_full,
        :dorsalis_pedis_bounding,
        :dorsalis_pedis_dp_doppler,
        :posterior_tibialis_absent,
        :posterior_tibialis_weak,
        :posterior_tibialis_normal,
        :posterior_tibialis_full,
        :posterior_tibialis_bounding,
        :posterior_tibialis_dp_doppler,
        :heart_sounds,
        :edema,
        :edema_where,
        :capillary_refill,
        :cardiac_rhythm,
        :specify_ectopy,
        :other_cardiac_rhythm,
        :cardiac_rhythm_comments,
        :pacemaker,
        :ma,
        :rate,
        :sens,
        :pacemaker_site,
        :site,
        :waveform,
        :waveform_comments,
        :pa_catheter_site,
        :waveform_for_pa_catheter,
        :waveform_pa_catheter_comments,
        :insertion_site,
        :trigger,
        :freq,
        :abdomen,
        :other_abdomen_type,
        :bowel_sounds,
        :last_bm,
        :bowel_control_problems,
        :other_bowel_control_problem,
        :feeding_method,
        :feeding_tube_type,
        :feeding_tube_size,
        :position,
        :other_position,
        :other_feeding_method,
        :drainage_color,
        :drainage_color_comments,
        :diet,
        :diet_type,
        :breakfast,
        :lunch,
        :dinner,
        :taken_method,
        :product,
        :strength_of_tf,
        :rate_of_tf,
        :tf_type,
        :residual,
        :placement,
        :other_placement,
        :placement_comments,
        :skin_type,
        :turgor,
        :turgor_comments,
        :iv_therapy_not_applicable,
        :current_iv_insertion_date_and_time,
        :therapy_type,
        :dressing_change_date_and_time,
        :iv_site,
        :other_iv_site,
        :condition,
        :start_change,
        :gauge,
        :number_of_attempts,
        :location,
        :urine,
        :suprapubic_type,
        :suprapubic_size,
        :insertion_date,
        :color,
        :dialysis,
        :dialysis_location,
        :venous_ulcer,
        :burn,
        :maceration,
        :excoriation,
        :diabetic_ulcer,
        :arterial_ulcer,
        :incision,
        :scar,
        :skin_tears,
        :venous_ulcer_depth,
        :burn_depth,
        :maceration_depth,
        :excoriation_depth,
        :diabetic_ulcer_depth,
        :arterial_ulcer_depth,
        :incision_depth,
        :scar_depth,
        :skin_tears_depth,
        :other_drainage,
        :location_image1,

        :pain_scale,
        :pain_scale_rating_scale,
        :criteria,
        :flacc_score_0,
        :flacc_score_1,
        :score_2_flacc,
        :total_score_flacc,
        :critical_care_pain_observation_tool,
        :indicator,

        :score_0_cpot,
        :score_1_cpot,
        :score_2_cpot,
        :total_score_cpot,
        :flacc_scale_face_0,
        :flacc_scale_face_1,
        :flacc_scale_face_2,
        :flacc_scale_legs_0,
        :flacc_scale_legs_1,
        :flacc_scale_legs_2,
        :flacc_scale_activity_0,
        :flacc_scale_activity_1,
        :flacc_scale_activity_2,
        :flacc_scale_activity_0,
        :flacc_scale_activity_1,
        :flacc_scale_activity_2,
        :flacc_scale_consolability_0,
        :flacc_scale_consolability_1,
        :flacc_scale_consolability_2,
        :flacc_scale_total_score,

        :cpot_score_facial_expression_0,
        :cpot_score_body_movements_0,
        :cpot_score_ventilator_compliance_0,
        :cpot_score_vocalization_0,
        :cpot_score_muscle_tension_0,
        :cpot_score_facial_expression_1,
        :cpot_score_body_movements_1,
        :cpot_score_ventilator_compliance_1,
        :cpot_score_vocalization_1,
        :cpot_score_muscle_tension_1,
        :cpot_score_facial_expression_2,
        :cpot_score_body_movements_2,
        :cpot_score_ventilator_compliance_2,
        :cpot_score_vocalization_2,
        :cpot_score_muscle_tension_2,
        :cpot_total_score,


        :step_id,
        best_eye_opening_response_values:[],
        best_verbal_response_values:[],
        best_motor_response_values:[],
        glasgow_coma_score_quality:[],
        speech:[],
        affect:[],
        resuscitation_status:[],
        stage:[],
        other_wounds:[],
        undermining:[],
        drainage:[],
        wound_amount:[],
        color_of_wound:[],
        periwound_surrounding_skin:[],
        verbal:[],
        non_verbal:[],
        scale_used:[],
        other_symptoms_present:[],
        additional_measures:[]
      )
    end
end
