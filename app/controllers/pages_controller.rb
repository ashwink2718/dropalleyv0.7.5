class PagesController < ApplicationController
  def home
  end

  def store
  end

  def cfstore
  end

  def cfindex
    @products = Product.cf.cat_select(params[:category]).group_by(&:title)
  end

  def terms
  end

  def privacy
  end

  def working
  end

end
