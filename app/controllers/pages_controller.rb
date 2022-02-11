class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home; end

  def about; end

  def fields; end

  def sitemap; end

  def contact; end

  def cookies; end

  def cookies_accepted
    session['cookie_eu_consented'] = "true"
  end
end
