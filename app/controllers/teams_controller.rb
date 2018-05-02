class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.search(params[:q])
      .order(sort_column + " " + sort_direction)
      .page(params[:page]).per(6)
    @search = params[:q]
    @display = params[:d]
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @players = Player.where(team: @team)
  end

  # GET /teams/new
  def new
    @team = Team.new
    @leagues = League.all.order(:name)
  end

  # GET /teams/1/edit
  def edit
    @leagues = League.all.order(:name)
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)
    @leagues = League.all.order(:name)
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    @leagues = League.all.order(:name)
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :city, :founded, :league_id, :logo, :q, :d)
    end

    def sort_column
      Player.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
