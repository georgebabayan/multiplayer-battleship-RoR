class StaticController < ApplicationController
  def homepage
    @funs = Fun.all
  end
end
