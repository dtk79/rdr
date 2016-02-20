class QueensController < ApplicationController
  before_action :set_queen, only: [:show, :edit, :update, :destroy]

  # GET /queens
  # GET /queens.json
  def index
    @queens = Queen.all
  end

  # GET /queens/1
  # GET /queens/1.json
  def show
  end

  # GET /queens/new
  def new
    @queen = Queen.new
  end

  # GET /queens/1/edit
  def edit
  end

  # POST /queens
  # POST /queens.json
  def create
    @queen = Queen.new(queen_params)

    respond_to do |format|
      if @queen.save
        format.html { redirect_to @queen, notice: 'Queen was successfully created.' }
        format.json { render :show, status: :created, location: @queen }
      else
        format.html { render :new }
        format.json { render json: @queen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queens/1
  # PATCH/PUT /queens/1.json
  def update
    respond_to do |format|
      if @queen.update(queen_params)
        format.html { redirect_to @queen, notice: 'Queen was successfully updated.' }
        format.json { render :show, status: :ok, location: @queen }
      else
        format.html { render :edit }
        format.json { render json: @queen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queens/1
  # DELETE /queens/1.json
  def destroy
    @queen.destroy
    respond_to do |format|
      format.html { redirect_to queens_url, notice: 'Queen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queen
      @queen = Queen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def queen_params
      params.require(:queen).permit(:name, :bio, :city, :image)
    end
end
