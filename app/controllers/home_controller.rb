class HomeController < ApplicationController
  def index
    @items = [
      {name: "Apply Up", link: "applyup.herokuapp.com", image: "apply_up.png"},
      {name: "YLS Class Action", link: "www.ylsclassaction.com", image: "yls_class_action.png"},
      {name: "Year after Year", link: "www.yearafteryear.org", image: "year_after_year.png"},
      {name: "Grounch", link: "www.groun.ch", image: "grounch.png"},
      {name: "Lake Chelan", link: "lake-chelan.herokuapp.com", image: "lake_chelan.png"}
    ]

  end
end
