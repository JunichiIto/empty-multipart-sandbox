class HelloController < ApplicationController
  skip_forgery_protection

  def new
  end

  def create
    head :ok
  end
end
