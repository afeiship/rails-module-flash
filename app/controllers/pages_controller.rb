class PagesController < ApplicationController
  def welcome
  end

  def page1
    flash.now[:notice] = "page1 Post successfully created"
  end

  def page2
    flash.now[:notice] = "page2 Post successfully created"
  end

  def page3
    flash.now[:info] = "page3 INFO successfully created"
  end

  def page4
    flash.now[:alert] = "page4 ALERT successfully created"
  end
end
