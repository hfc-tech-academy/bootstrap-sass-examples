class WelcomeController < ApplicationController
  DROPDOWN_INFO = { 
    title: "Dropdowns", 
    documentation: "/bootstrap-sass/components/dropdowns.html",
    examples: [
      [ "Basic", "dropdowns/basic" ],
      [ "Rounded", "dropdowns/rounded" ]
    ]
  }

  GRID_INFO = {
    title: "Grid",
    documentation: "/bootstrap-sass/layout/README.html",
    examples: [
      [ "Custom", "grid/custom", "/bootstrap-sass/layout/advanced_techniques.html" ]
    ]
  }

  NAVBARS_INFO = {
    title: "Nav Bars",
    documentation: "/bootstrap-sass/components/navbars.html",
    examples: [
      [ "Sidebottom", "navbars/sidebottom", "/bootstrap-sass/components/sidebottom.html"],
      [ "Sticky Footer", "footer/sticky" ]
    ]
  }

  def index
    @info = [ GRID_INFO, NAVBARS_INFO, DROPDOWN_INFO ]
  end
end
