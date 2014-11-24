class CourseAssignmentsController < ApplicationController
  before_action :set_course_assignment, only: [:show, :edit, :update, :destroy]

  # GET /course_assignments
  # GET /course_assignments.json
  def index
    @course_assignments = CourseAssignment.all
  end

  # GET /course_assignments/1
  # GET /course_assignments/1.json
  def show
  end

  # GET /course_assignments/new
  def new
    @course_assignment = CourseAssignment.new
  end

  # GET /course_assignments/1/edit
  def edit
  end

  # POST /course_assignments
  # POST /course_assignments.json
  def create
    @course_assignment = CourseAssignment.new(course_assignment_params)

    respond_to do |format|
      if @course_assignment.save
        format.html { redirect_to @course_assignment, notice: 'Course assignment was successfully created.' }
        format.json { render :show, status: :created, location: @course_assignment }
      else
        format.html { render :new }
        format.json { render json: @course_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_assignments/1
  # PATCH/PUT /course_assignments/1.json
  def update
    respond_to do |format|
      if @course_assignment.update(course_assignment_params)
        format.html { redirect_to @course_assignment, notice: 'Course assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_assignment }
      else
        format.html { render :edit }
        format.json { render json: @course_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_assignments/1
  # DELETE /course_assignments/1.json
  def destroy
    @course_assignment.destroy
    respond_to do |format|
      format.html { redirect_to course_assignments_url, notice: 'Course assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_assignment
      @course_assignment = CourseAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_assignment_params
      params.require(:course_assignment).permit(:teacher_id, :course_id, :schedule, :hours_quantity, :init_date)
    end
end
