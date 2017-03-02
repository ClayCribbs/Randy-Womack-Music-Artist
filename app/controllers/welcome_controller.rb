class WelcomeController < ApplicationController
  def index
  		@style = StyleProfile.last
  end
end
