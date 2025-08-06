class HomeController < ApplicationController
  def index
  end
  def about
  end
  def sign_in
  end
  def sign_up
  end
  def main_menu
    @menu_items = JSON.parse(File.read("app/assets/data/menu_items.json"))
  end
end
