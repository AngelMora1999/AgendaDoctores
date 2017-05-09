class HomeController < ApplicationController
  def patient
  end

  def doctor
  end

  def index
  end

  protected
  def set_layout
    return "patient" if action_name == "patient"
    return "doctor" if action_name == "doctor"
    super
  end
end
