class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:edit, :update]

  # GET /candidates
  # GET /candidates.json
  def index
    @candidates = Candidate.all
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      flash[:success] = 'Candidate was successfully created.'
      redirect_to action: "index"
    else
      render :new
    end
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    if @candidate.update(candidate_params)
      flash[:success] = 'Candidate was successfully updated.'
      redirect_to action: "index"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:name, :geo_location, :education_id, :github, :linkedin, :email, :telephone, :street, :city, :country, :postcode)
    end
end
