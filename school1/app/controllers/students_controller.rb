class StudentsController < ApplicationController
   def index
     @students = Student.all
      end
	def new
		@student = Student.new
	end

	def create
     @student = Student.new(student_params)

     if @student.save
     	flash[:notice] ="sucessfully created"
     	redirect_to student_path(@student)
	else
         render "new"
     end
 end
def show
@student = Student.find(params[:id])
end

def edit
	@student = Student.find(params[:id])

	end
def update
@student = Student.find(params[:id])
if @student.update(student_params)
	flash[:notice] = "student was sucessfully updated"
	redirect_to student_path(@student)
else
	render 'edit'
	 end


end
def destroy
	@student = Student.find(params[:id])
	@student.destroy
	flash[:notice] = 'article was sucessfullu deleted'
	redirect_to students_path
	end


	private
def student_params
	params.require(:student).permit(:name,:mail,:age,:qualification)


end
end
