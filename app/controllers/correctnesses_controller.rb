class CorrectnessesController < ApplicationController
  before_action :set_correctness, only: [:show, :edit, :update, :destroy]

  # GET /correctnesses
  # GET /correctnesses.json
  def index
    @correctnesses = Correctness.all
  end

  # GET /correctnesses/1
  # GET /correctnesses/1.json
  def show
  end

  # GET /correctnesses/new
  def new
    @correctness = Correctness.new
  end

  # GET /correctnesses/1/edit
  def edit
  end

  # POST /correctnesses
  # POST /correctnesses.json
  def create
    @correctness = Correctness.new(correctness_params)

    respond_to do |format|
      if @correctness.save
        format.html { redirect_to @correctness, notice: 'Correctness was successfully created.' }
        format.json { render :show, status: :created, location: @correctness }
      else
        format.html { render :new }
        format.json { render json: @correctness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correctnesses/1
  # PATCH/PUT /correctnesses/1.json
  def update
    respond_to do |format|
      if @correctness.update(correctness_params)
        format.html { redirect_to @correctness, notice: 'Correctness was successfully updated.' }
        format.json { render :show, status: :ok, location: @correctness }
      else
        format.html { render :edit }
        format.json { render json: @correctness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correctnesses/1
  # DELETE /correctnesses/1.json
  def destroy
    @correctness.destroy
    respond_to do |format|
      format.html { redirect_to correctnesses_url, notice: 'Correctness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correctness
      @correctness = Correctness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correctness_params
      params.require(:correctness).permit(:dictionary_id, :user_id, :totalTryCount, :rightCount)
    end
end
