class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :remove]

  # GET /players
  # GET /players.json
  def index
    @players = Player.search(params[:q]).page(params[:page]).per(3)
    @search = params[:q]
    @display = params[:d]
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
    @teams = Team.all.order(:name)
  end

  # GET /players/1/edit
  def edit
    @teams = Team.all.order(:name)
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
    @teams = Team.all.order(:name)
    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    @teams = Team.all.order(:name)
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :team_id, :surname, :born, :country, :position, :image, :q, :d)
    end

end
