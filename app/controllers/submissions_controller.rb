class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

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
    byebug
    respond_to do |format|
      if @submission.save
        format.html { redirect_to edit_submission_path(@submission), notice: 'Submission was successfully created.' }
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
        format.html { redirect_to edit_submission_path(@submission), notice: 'Submission was successfully updated.' }
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
      params.require(:submission).permit(:patient_initials, :user_id, :age, :gender, :admitting_primary_medical_diagnosis, :week, :pupils_brisk_left, :pupils_sluggish_left, :pupils_fixed_left, :pupils_size_left, :pupils_brisk_right, :pupils_sluggish_right, :pupils_fixed_right, :pupils_size_right, :best_eye_opening_response, :best_verbal_response, :best_motor_response, :patient_total_score)
      #:age, :gender, :admitting_primary_medical_diagnosis, :user_id, :week, best_eye_opening_response, :best_verbal_response, :best_motor_response, :patient_total_score, :glasgow_coma_score_quality, :gag_reflex, :speech, :hearing, :face, :tongue, :strength, :weakness, :contracture, :flaccid, :spastic, :paresis, :other)
    end
end
