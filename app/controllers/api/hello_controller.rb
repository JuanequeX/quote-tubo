class HelloController < ApplicationController

  def hello_world
    render json: { data: "Hello World!" }
  end
end
