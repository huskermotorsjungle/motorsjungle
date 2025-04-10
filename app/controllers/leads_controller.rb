class LeadsController < ApplicationController
  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to root_path, notice: "Thanks! We'll notify you when we launch."
    else
      redirect_to root_path, alert: "Oops! Something went wrong."
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:email, :category)
  end
end
