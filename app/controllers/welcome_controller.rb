class WelcomeController < ApplicationController
  DROPDOWN_INFO = { 
    title: "Dropdowns", 
    documentation: "/bootstrap-sass/components/dropdowns.html",
    examples: [
      [ "Basic", "dropdowns/basic" ],
      [ "Rounded", "dropdowns/rounded" ]
    ]
  }

  NAVBARS_INFO = {
    title: "Nav Bars",
    documentation: "/bootstrap-sass/components/navbars.html",
    examples: [
      [ "Sidebottom", "navbars/sidebottom", "/bootstrap-sass/components/sidebottom.html"]
    ]
  }
  def index
    @info = [ DROPDOWN_INFO, NAVBARS_INFO ]
  end
end
