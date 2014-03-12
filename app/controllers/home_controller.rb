class HomeController < ApplicationController
  def index
    @items = [
      {
        name: "Canyon Racer",
        link: "http://www.playcanyonracer.com",
        image: "canyon_racer.png",
        type: "open",
        description: "Old School HTML5/Javsacript game - 3 Levels of Canyon Racing Fun.",
        tech: "[HTML5/Javascript, Node.js]"
      },
      {
        name: "Lattice",
        link: "http://www.github.com/jyli7/lattice",
        image: "lattice.png",
        type: "open",
        description: "A lightweight framework for making games in Javascript.",
        tech: "[Javascript]"
      },
      {
        name: "YLS Class Action",
        link: "http://www.ylsclassaction.com",
        image: "yls_class_action.png",
        type: "open",
        description: "Better course selection for Yale Law School's 600 students.",
        tech: "[Rails, Javascript, jQuery, Postgresql]"
      },
      {
        name: "Year after Year",
        link: "http://www.yearafteryear.org",
        image: "year_after_year.png",
        type: "open",
        description: "Pledge to give to the causes you care about, year after year.",
        tech: "[Rails, Javascript, jQuery, MongoDB]"
      },
      {
        name: "Pivotal Labs",
        link: "http://www.pivotallabs.com",
        image: "pivotal_labs.png",
        type: "work",
        description: "Software Engineer. Used agile methodologies and rigorous test-driven development to
        develop several projects (e.g. a complete RESTful API for a mobile client)",
        tech: "[Ruby, Rails, Javascript, MySQL]"
      },
      {
        name: "Codecademy",
        link: "http://www.codecademy.com",
        image: "codecademy.png",
        type: "work",
        description: "Full stack developer. Worked with other developers to design and implement products across
        the site (groups, quizzes, user dashboard, user orientation, activity feed).",
        tech: "[Rails, Javascript, MongoDB, Redis]"
      },
      {
        name: "Apply Up",
        link: "http://applyup.herokuapp.com",
        image: "apply_up.png",
        type: "client",
        description: "Rails project for client. (Work in progress, password protected).",
        tech: "[Rails, Javascript, Backbone, MongoDB]"
      },
      {
        name: "Admitster",
        link: "http://www.jylcreations.com",
        image: "admitster.png",
        type: "client",
        description: "Python/Django project for client. (Work in progress, link not available).",
        tech: "[Python, Django, HTML/CSS]"
      },
      {
        name: "Conviro",
        link: "http://www.jylcreations.com",
        image: "conviro.png",
        type: "client",
        description: "Rails/Node.js project for client. (Work in progress, link not available).",
        tech: "[Rails, Node.js]"
      },
      {
        name: "Eat Drink Jobs",
        link: "http://www.eatdrinkjobs.com",
        image: "eat_drink_jobs.png",
        type: "client",
        description: "Feature additions and improvements for NYC startup",
        tech: "[Rails, Mongo, Node.js]"
      }
    ].shuffle

    @posts = Post.order_by(:written_at.desc)
  end

  def mail
    UserMailer.inquiry_filed(params[:name], params[:email], params[:message]).deliver
    render json: {}
  end

  def endless_input
    render layout: false
  end
end
