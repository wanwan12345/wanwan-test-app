class SampleController < ApplicationController
  VALUES = [1..2]
  def index
    @values = VALUES
  end
end
