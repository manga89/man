class SubjectsController < ApplicationController

  layout false
  def index
@subjects = Subject.sorted

  end

  def show

   @subject = Subject.find(params[:id]) 
  end

  def new
@subject = Subject.new

  end

  def create
@subject = Subject.new(subject_params)

  if @subject.save
     flash[:notice] ="You have successfully created '#{@subject.name}'  as new subject"
    redirect_to(:action =>'index')
  else
   
render(:action =>'new')
end

  end

  def edit
    
 @subject = Subject.find(params[:id]) 

  end
  def update
@subject = Subject.find(params[:id])

  if @subject.update_attributes(subject_params)
    flash[:notice] ="Your subject '#{@subject.name}' has been successfully  edited"
  redirect_to(:action =>'show', :id=>@subject.id)
  else

render(:action =>'edit')
end

  end

  def delete
@subject = Subject.find(params[:id]) 

end

def destroy
@subject = Subject.find(params[:id]) 
@subject.destroy
flash[:notice] ="You have successfully deleted '#{@subject.name}' from your list of subjects "
redirect_to(:action =>'index')




  end

  private 
  def subject_params
    params.require(:subject).permit(:name, :visible, :position)
end
end
