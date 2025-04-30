class DirectorsController < ApplicationController
  def index
    render({ :template => "misc_templates/directors"})
  end
end
