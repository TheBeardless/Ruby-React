class V1::SnacksController < ApplicationController

  def index

    render json: Snack.all # return all snacks

  end

end

