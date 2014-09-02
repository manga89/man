class PeopleController < ApplicationController

  def index
    @people = People.all
    if !@people
      flash[:notice] ='No body has registered'
      redirect_to(:action =>'index')

end
  end

  def new
    @people = People.new
  end

  def create

    @people = People.new(people_params)

  if @people.save
     flash[:notice] ="You have successfully created '#{@people.first_name}  #{@people.last_name}'  as new Person"
    redirect_to(:action =>'index')
  else
   
render(:action =>'new')
end

  end

  def show
    @people = People.find(params[:id])
  end

  def edit
 @people = People.find(params[:id])

  end

  def update
    @people = People.find(params[:id])

    if @people.update_attributes(people_params)

      flash[:notice] = " '#{@people.first_name}' has successfully been edited "
      redirect_to(:action =>'index')

    else
      render(:action =>'edit')
    end
  end

  def delete
     @people = People.find(params[:id])
  end

 def destroy
@people = People.find(params[:id]) 
@people.destroy
flash[:notice] ="You have successfully deleted '#{@people.first_name}' from your list of subjects "
redirect_to(:action =>'index')

  end

private
def people_params
params.require(:people).permit(:first_name, :last_name, :sex, :visible, :age, :state, :address,:hobbies, :profession)

end


end
