class V1::SnacksController < ApplicationController

  def index
    render json: Snack.all # return all snacks from db.
  end


  def create
    # check model is valid before testing.
    # snack = Snack.new(name: params[:name], description: params[:description], rating: params[:rating])
    snack = Snack.new(snack_params)
    if snack.save
      render json: snack, status: :created # status 201
    else
      render json: snack.errors, status: :unprocessable_entity # status 422
    end
  end

  # this can be used to prevent someone passing on fake params to the database.
  # ie not permitting rating will result in a null rating if used.
  private 
  def snack_params
  params.require(:snack).permit(:name, :description, :rating)
  end
end

