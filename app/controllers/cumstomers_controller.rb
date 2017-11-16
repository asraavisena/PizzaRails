class CumstomersController < ApplicationController
  before_action :set_cumstomer, only: [:show, :edit, :update, :destroy]

  # GET /cumstomers
  # GET /cumstomers.json
  def index
    @cumstomers = Cumstomer.all
  end

  # GET /cumstomers/1
  # GET /cumstomers/1.json
  def show
  end

  # GET /cumstomers/new
  def new
    @cumstomer = Cumstomer.new
  end

  # GET /cumstomers/1/edit
  def edit
  end

  # POST /cumstomers
  # POST /cumstomers.json
  def create
    @cumstomer = Cumstomer.new(cumstomer_params)

    respond_to do |format|
      if @cumstomer.save
        format.html { redirect_to @cumstomer, notice: 'Cumstomer was successfully created.' }
        format.json { render :show, status: :created, location: @cumstomer }
      else
        format.html { render :new }
        format.json { render json: @cumstomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cumstomers/1
  # PATCH/PUT /cumstomers/1.json
  def update
    respond_to do |format|
      if @cumstomer.update(cumstomer_params)
        format.html { redirect_to @cumstomer, notice: 'Cumstomer was successfully updated.' }
        format.json { render :show, status: :ok, location: @cumstomer }
      else
        format.html { render :edit }
        format.json { render json: @cumstomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cumstomers/1
  # DELETE /cumstomers/1.json
  def destroy
    @cumstomer.destroy
    respond_to do |format|
      format.html { redirect_to cumstomers_url, notice: 'Cumstomer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cumstomer
      @cumstomer = Cumstomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cumstomer_params
      params.require(:cumstomer).permit(:customerID, :name, :surename)
    end
end
