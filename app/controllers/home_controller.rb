class HomeController < ApplicationController
  def index
    @items = [
      {
        name: "YLS Class Action",
        link: "http://www.ylsclassaction.com",
        image: "yls_class_action.png",
        description: "Better course selection for Yale Law School's 600 students.",
        tech: "[Rails, Javascript, jQuery, Postgresql]"
      },
      {
        name: "Year after Year",
        link: "http://www.yearafteryear.org",
        image: "year_after_year.png",
        description: "Pledge to give to the causes you care about, year after year.",
        tech: "[Rails, Javascript, jQuery, MongoDB]"
      },
      {
        name: "Grounch",
        link: "http://www.groun.ch",
        image: "grounch.png",
        description: "Get group movie recommendations for you and your friends.",
        tech: "[Rails, jQuery, HunchAPI, Postgresql]"
      },
      {
        name: "Lake Chelan",
        link: "http://lake-chelan.herokuapp.com",
        image: "lake_chelan.png",
        description: "Post-wedding trip site for client.",
        tech: "[Javascript]"
      },
      {
        name: "Apply Up",
        link: "http://applyup.herokuapp.com",
        image: "apply_up.png", 
        description: "The Common Application for Startups. (Work in progress, password protected).",
        tech: "[Rails, Javascript, Backbone, MongoDB]"
      }
    ]

  end
end
