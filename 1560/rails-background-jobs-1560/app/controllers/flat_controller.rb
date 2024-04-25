class FlatController < ApplicationController
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      UpdateFlatJob.perform_later(@flat)
    end
  end
end
