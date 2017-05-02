class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]
  before_action :set_patient, only: [:new, :create, :edit, :update]

  # GET /submissions
  # GET /submissions.json
  def index
    @unfinished_submissions = Submission.where(completed:false)
    @finished_submissions = Submission.where(completed:true)
    @patients = Patient.all
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


  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)
    respond_to do |format|
      if @submission.save
        format.html { redirect_to edit_patient_submission_path(@patient, @submission, :tab => params[:selected_tab]), notice: 'Submission was successfully created.' }
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
      if @submission.update(submission_params)
        format.html { redirect_to edit_patient_submission_path(@patient.id, @submission.id, :tab => params[:selected_tab]), notice: 'Submission was successfully updated.' }
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

  def complete_submission
    @submission = Submission.find(params[:submission_id])
    # Set the submission to be completed
    @submission.completed = true;
    # Save the submission
    @submission.save
    # Redirect to the logged in home with notice of success
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'You have successfully completed the entry form!' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(
        :patient_id,
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
        :other_iv_site,
        :start_change,
        :gauge,
        :number_of_attempts,
        :location,
        :urine,
        :suprapubic_type,
        :suprapubic_size,
        :insertion_date,
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
        :location_image2,
        :resuscitation_comments,
        :monitor_comments,
        :IABP_number_of_days,

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

        :flacc_scale_cry_0,
        :flacc_scale_cry_1,
        :flacc_scale_cry_2,

        :flacc_scale_consolability_0,
        :flacc_scale_consolability_1,
        :flacc_scale_consolability_2,

        :flacc_scale_total_score,

        :cpot_score_facial_expression_0,
        :cpot_score_facial_expression_1,
        :cpot_score_facial_expression_2,
        :cpot_score_body_movements_0,
        :cpot_score_body_movements_1,
        :cpot_score_body_movements_2,
        :cpot_score_ventilator_compliance_0,
        :cpot_score_ventilator_compliance_1,
        :cpot_score_ventilator_compliance_2,
        :cpot_score_vocalization_0,
        :cpot_score_vocalization_1,
        :cpot_score_vocalization_2,
        :cpot_score_muscle_tension_0,
        :cpot_score_muscle_tension_1,
        :cpot_score_muscle_tension_2,
        :cpot_total_score,


#peripheral iv documentation
        :peripheral_iv_insertion_change_date_and_time,
        :peripheral_iv_insertion_site,
        :number_of_attempts_for_peripheral_iv_insertion,
        :catheter_gauge,
        :initials,
        :narrative_note,
        :peripheral_iv_site_assessment_date_and_time,
        :shift,
        :iv_patent,
        :signs_of_infiltration,
        :signs_of_infection_or_phlebitis,
        :dressing_dry_or_intact,
        :dressing_change_time,
        :tubing_change_time,
        :your_initials,
        :narrative_note_for_assessment,
#indwelling urinary catheter documentation
        :indwelling_urinary_catheter_insertion_date_and_time,
        :size_of_catheter,
        :number_of_attempts_for_indwelling_urinary_catheter_insertion,
        :urine_return_amount,
        :urine_return_color,
        :urine_return_clarity,
        :urine_return_odor,
        :urinary_catheter_initials,
        :urinary_catheter_narrative_note,
        :urine_output_assessment_date_and_time,
        :shift_for_urine_output_assessment,
        :urine_output_assessment_color,
        :urine_output_assessment_clarity,
        :urine_output_assessment_odor,
        :initials_for_urine_output_assessment,
        :narrative_note_for_urine_output_assessment,
#vital signs documentation
        :vital_signs_documentation_time,
        :t_vital_signs,
        :p_vital_signs,
        :r_vital_signs,
        :b_p_vital_signs,
        :sao2_vital_signs,
        :pas_pad_vital_signs,
        :pcwp_vital_signs,
        :cvp_vital_signs,
        :gcs_vital_signs,
        :icp_vital_signs,
        :i_vital_signs,
        :o_vital_signs,
        :other_ct_ngt_drains_vital_signs,
        :titrated_meds_or_meds_treatment_based_on_patients_condition_vit,
        :other_relevant_notes_vital_signs,
#adl flowsheet
        :oral_care,
        :dentures_present,
        :perifoley_care,
        :linen_change,
        :bath,
        :trach_care,
        :bed_rest,
        :dangle,
        :ambulate,
        :transfer_chair,
        :bathroom_privileges_bsc,
        :position_change,
        :ad_lib,
        :name_allergy_band,
        :bed_low_position_locked,
        :side_rails_up1234,
        :non_skid_footwear,
        :call_light_in_reach,
        :fall_precautions,
        :seizure_precautions,
        :isolation,
        :bed_check,
        :posey_wrap,
        :ambu_bag,
        :suction_and_correct_setup,
        :alarms_and_limits,
        :iv_pumps,
        :feeding_pump,
        :pca_pump,
        :incentive_spirometer,
        :pulse_oximeter,
        :trapeze,
        :sequential_compression_device,
        :k_pad,
        :nibp,
        :continuous_passive_motion,
        :traction_type,
        :mattress_overlay,
        :walker,
        :speciality_bed,
        :hypo_hyperthemia_blanket,
        :bedside_commode,
        :abductor_pillow,
        :wound_vac,
        :humidifier,
        :heat_lamp,
        :o2_tank,
        :other_equipment,

#skin risk assessment

        :completely_limited,
        :patients_completely_limited_score,
        :very_limited,
        :patients_very_limited_score,
        :slightly_limited,
        :patients_slightly_limited_score,
        :no_impairment,
        :patients_no_impairment_score,
        :constantly_moist,
        :patients_constantly_moist_score,
        :moist,
        :patients_moist_score,
        :occasionally_moist,
        :patients_occasionally_moist_score,
        :rarely_moist,
        :patients_rarely_moist_score,
        :bedfast,
        :patients_bedfast_score,
        :chairfast,
        :patients_chairfast_score,
        :walks_occasionally,
        :patients_walks_occasionally_score,
        :walks_frequently,
        :patients_walks_frequently_score,
        :completely_immobile,
        :patients_completely_immobile_score,
        :very_limited_mobility,
        :patients_very_limited_mobility_score,
        :slightly_limited_mobility,
        :patients_slightly_limited_mobility_score,
        :no_limitations,
        :patients_no_limitations_score,
        :very_poor,
        :patients_very_poor_score,
        :probably_inadequate,
        :patients_probably_inadequate_score,
        :adequate,
        :patients_adequate_score,
        :excellent,
        :patients_excellant_score,
        :problem,
        :patients_problem_score,
        :potential_problem,
        :patients_potential_problem_score,
        :no_apparent_problem,
        :patients_no_apparent_problem_score,
        :total_score_skin_assessment_screen,
        :choose_for_information,
        :no_history_of_falling,
        :patients_no_history_of_falling_score,
        :immediate_or_within_three_months,
        :patients_immediate_or_within_three_months_score,
        :no_presence_of_secondary_diagnosis,
        :patients_no_presence_of_secondary_diagnosis_score,
        :yes_presence_of_secondary_diagnosis,
        :patients_yes_presence_of_secondary_diagnosis_score,
        :none_bedrest_nurse_assist,
        :patients_none_bedrest_nurse_assist_score,
        :cane_walker_crutches,
        :patients_cane_walker_crutches_score,
        :furniture,
        :patients_furniture_score,
        :no_iv_heparin_lock,
        :patients_no_iv_heparin_lock_score,
        :yes_iv_heparin_lock,
        :patients_yes_iv_heparin_lock_score,
        :normal_bedrest_wheelchair,
        :patients_normal_bedrest_wheelchair_score,
        :weak,
        :patients_weak_score,
        :impaired,
        :patients_impaired_score,
        :oriented_to_own_ability,
        :patients_oriented_to_own_ability_score,
        :overstimates_forgets_limitations,
        :patients_overestimates_forgets_limitations_score,
        :total_score_fall_scale_risk,
        :select_one,
#vte risk assessment

        :risk_factor_one,
        :risk_factor_two,
        :risk_factor_three,
        :risk_factor_five,
        :vte_total_score,

#iv insertion

        :iv_insertion_type,
        :iv_insertion_gauge,
        :iv_insertion_length,
        :iv_insertion_site,
        :iv_insertion_site_other,
        :iv_insertion_number_of_attempts,
        :iv_insertion_flush,
        :iv_insertion_site_of_attempts,
        :iv_insertion_site_of_attempts_other,
        :patient_tolerance_of_procedure,
        :iv_insertion_date_time,
        :iv_insertion_name,

#urinary catheterization

        :pre_insertion,

        :urinary_catheterization_size,
        :urinary_catheterization_volume,
        :urinary_catheterization_color,
        :urinary_catheterization_clarity,
        :urinary_catheterization_odor,
        :balloon_water_volume,
        :initial_urine_return,
        :patient_tolerance_of_procedure_urinary,
        :urinary_catheterization_datetime,
        :urinary_catheterization_name,


        best_eye_opening_response_values:[],
        best_verbal_response_values:[],
        best_motor_response_values:[],
        glasgow_coma_score_quality:[],
        speech:[],
        affect:[],
        social_support:[],
        resuscitation_status:[],
        breath_sounds:[],
        iv_site:[],
        condition:[],
        color:[],
        stage:[],
        other_wounds:[],
        undermining:[],
        drainage:[],
        wound_amount:[],
        color_of_wound:[],
        periwound_surrounding_skin:[],
        location_image1:[],
        location_image2:[],
        verbal:[],
        non_verbal:[],
        scale_used:[],
        other_symptoms_present:[],
        additional_measures:[],
        flacc_score_zero_values:[],
        flacc_score_one_values:[],
        flacc_score_two_values:[],
        medications:[],
        heart_sounds:[],

        risk_factor_one_values:[],    #vte
        risk_factor_two_values:[],    #vte
        risk_factor_three_values:[],  #vte
        risk_factor_five_values:[],   #vte
        patients_total_score:[],
        urinary_catheterization_type:[]
      )
    end
end
