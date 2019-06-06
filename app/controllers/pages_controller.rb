class PagesController < ApplicationController
  def home
    @titi = 5
  end
  def contact
    @email = 'moi@moi.fr'
  end
end
