class HomeController < ApplicationController
  def index
    @items = [
      {
        name: "Canyon Racer",
        link: "http://www.playcanyonracer.com",
        image: "yls_class_action.png",
        type: "game",
        description: "3 Levels of Canyon Racing Fun",
        tech: "[Javascript, Node.js]"
      },
      {
        name: "Lattice",
        link: "http://www.github.com/jyli7/lattice",
        image: "yls_class_action.png",
        type: "tool",
        description: "Lightweight framework for making games in Javascript",
        tech: "[Javascript]"
      },
      {
        name: "YLS Class Action",
        link: "http://www.ylsclassaction.com",
        image: "yls_class_action.png",
        type: "web",
        description: "Better course selection for Yale Law School's 600 students.",
        tech: "[Rails, Javascript, jQuery, Postgresql]"
      },
      {
        name: "Year after Year",
        link: "http://www.yearafteryear.org",
        image: "year_after_year.png",
        type: "web",
        description: "Pledge to give to the causes you care about, year after year.",
        tech: "[Rails, Javascript, jQuery, MongoDB]"
      },
      {
        name: "Pivotal Labs",
        link: "http://www.pivotallabs.com",
        image: "pivotal_labs.png",
        type: "web",
        description: "Software Engineer. Used agile methodologies and rigorous test-driven development to
        develop several projects (e.g. a complete RESTful API for a mobile client,",
        tech: "[Ruby, Rails, Javascript, MySQL]"
      },
      {
        name: "Codecademy",
        link: "http://www.codecademy.com",
        image: "codecademy.png",
        type: "web",
        description: "Full stack developer. Worked with other developers to design and implement products across
        the site (groups, quizzes, user dashboard, user orientation, activity feed)",
        tech: "[Rails, Javascript, MongoDB, Redis]"
      },
      {
        name: "Apply Up",
        link: "http://applyup.herokuapp.com",
        image: "apply_up.png",
        type: "web",
        description: "Rails project for client. (Work in progress, password protected).",
        tech: "[Rails, Javascript, Backbone, MongoDB]"
      }
    ]

    @posts = Post.order_by(:written_at.desc)
  end

  def mail
    UserMailer.inquiry_filed(params[:name], params[:email], params[:message]).deliver
    render json: {}
  end
end
