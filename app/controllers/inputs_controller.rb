class InputsController < ApplicationController
  def new
    @inputs= Inputs.new
  end

  def create
    @inputs=Inputs.new(inputs_params)
  end
end
