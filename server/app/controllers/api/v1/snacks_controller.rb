class Api::V1::SnacksController < ApplicationController
  # this would be better moved to the applicationController as it's a generic rails error that can occur all over...but out of scope. 
rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

  def index
    render json: Snack.all # return all snacks from db.
  end

  def create
    # check model is valid before testing.
    # snack = Snack.new(name: params[:name], description: params[:description], rating: params[:rating])
    snack = Snack.new(snack_params)
    if snack.save #if true
      render json: snack, status: :created # status 201
    else
      render json: snack.errors, status: :unprocessable_entity # status 422
    end
  end

  def show
    render json: Snack.find(params[:id])
  end

  def update
    snack = Snack.find(params[:id])
    snack.update(snack_params)
    render json: {message: "Snack Updated!"}, status: :ok
  end

  def destroy
    Snack.find(params[:id]).destroy! # destroy bang gives more callback options. 
    
    head :no_content #status code 204
  end

  private 

  # this can be used to prevent someone passing on fake params to the database.
  # ie not permitting rating will result in a null rating if used.
  def snack_params
  params.require(:snack).permit(:name, :description, :rating)
  end

  # rescue response 422 if record not destoyed and return the error
  def not_destroyed
    render json: {errors: e.record.errors}, status: :unprocessable_entity 
  end

end

