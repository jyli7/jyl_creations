class HomeController < ApplicationController
  def index
    @items = [
      {name: "Apply Up", link: "http://applyup.herokuapp.com", image: "apply_up.png"},
      {name: "YLS Class Action", link: "http://www.ylsclassaction.com", image: "yls_class_action.png"},
      {name: "Year after Year", link: "http://www.yearafteryear.org", image: "year_after_year.png"},
      {name: "Grounch", link: "http://www.groun.ch", image: "grounch.png"},
      {name: "Lake Chelan", link: "http://lake-chelan.herokuapp.com", image: "lake_chelan.png"}
    ]

  end
end
