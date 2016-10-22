class SampleController < ApplicationController
  @@max         = 0
  @@values      = []
  @@values_done = []
  def index
    if params[:max].present?
      @@max = params[:max].to_i
      @value = "Start from #{@@max}"
      @@values = (1..@@max).to_a.shuffle
      @@values_done = []
    else
      @value = @@values.shift
      @@values_done << @value
    end
    @values_done = @@values_done
    @max = @@max
  end
end
