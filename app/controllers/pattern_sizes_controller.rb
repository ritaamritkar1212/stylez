class PatternSizesController < ApplicationController
  before_action :set_pattern_size, only: [:show, :edit, :update, :destroy]

  # GET /pattern_sizes
  # GET /pattern_sizes.json
  def index
    @pattern_sizes = PatternSize.all
  end

  # GET /pattern_sizes/1
  # GET /pattern_sizes/1.json
  def show
  end

  # GET /pattern_sizes/new
  def new
    @pattern_size = PatternSize.new
  end

  # GET /pattern_sizes/1/edit
  def edit
  end

  # POST /pattern_sizes
  # POST /pattern_sizes.json
  def create
    @pattern_size = PatternSize.new(pattern_size_params)
    @pattern_size.quantity = pattern_size_params(:quantity)
    respond_to do |format|
      if @pattern_size.save
        format.html { redirect_to @pattern_size, notice: 'Pattern size was successfully created.' }
        format.json { render :show, status: :created, location: @pattern_size }
      else
        format.html { render :new }
        format.json { render json: @pattern_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pattern_sizes/1
  # PATCH/PUT /pattern_sizes/1.json
  def update
    respond_to do |format|
      if @pattern_size.update(pattern_size_params)
        format.html { redirect_to @pattern_size, notice: 'Pattern size was successfully updated.' }
        format.json { render :show, status: :ok, location: @pattern_size }
      else
        format.html { render :edit }
        format.json { render json: @pattern_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pattern_sizes/1
  # DELETE /pattern_sizes/1.json
  def destroy
    @pattern_size.destroy
    respond_to do |format|
      format.html { redirect_to pattern_sizes_url, notice: 'Pattern size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pattern_size
      @pattern_size = PatternSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pattern_size_params
      params.require(:pattern_size).permit(:quantity,:size_id,:pattern_id)
    end
end
