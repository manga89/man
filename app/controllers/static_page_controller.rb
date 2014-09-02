class StaticPageController < ApplicationController
  def home

   @Jesus ='God'

  @vine='the Resurrection and the Life'

  @date = Date.today
  end

  def help
  end

  def contact
  	@name = params["name"]
	
	if @name ==""

  	@error_msg = "You have an empty field"

  end

  	@email = params["email"]
    @textarea=params["textarea"]

     @newsletter = params["newsletter"] =="newsletter"

     gender=params["gender"]

     @male = gender=="Male"
     @female = gender=="Female"

  	
	 end


end
