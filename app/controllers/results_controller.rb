class ResultsController < ApplicationController
  before_action :set_result, only: %i[ show edit update destroy ]
  skip_before_action :authorize, only: [:index, :show, :create, :update, :destroy]

  # GET /results
  def index
    @results = Result.all

    render json: @results
  end

  # GET /results/1
  def show
    render json: @result
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  def create
    @result = Result.new(result_params)

    if @result.save
      redirect_to @result, notice: "Result was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /results/1
  def update
    if @result.update(result_params)
      redirect_to @result, notice: "Result was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /results/1
  def destroy
    @result.destroy
    redirect_to results_url, notice: "Result was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_result
    @result = Result.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def result_params
    params.permit(:user_id, :emoji, :mood)
  end
end
