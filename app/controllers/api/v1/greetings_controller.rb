class Api::V1::GreetingsController < ApplicationController
  def index
    greetings = Greeting.order('RANDOM()').first

    if greetings
      render json: { status: 'SUCCESS', message: 'Loaded greetings', data: greetings }, status: :ok
    else
      render json: greetings.errors, status: :bad_request
    end
  end
end
