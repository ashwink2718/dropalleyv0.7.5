class PagesController < ApplicationController
  def home
  end

  def store
  end

  def cfstore
    @products = Product.cf.cat_select("women_dresses")
  end

  def cfindex
    @products = Product.cf.cat_select(params[:category]).group_by(&:title)
  end

  def terms
  end

  def working
  end

end
