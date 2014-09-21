class TasksController < ApplicationController
	def index
		@tasks = Entry.all 
	end
	def show

	end

	def new

	end

	def edit

	end

	def create
		@task = params[:new_task]
		#prevent null entries from becoming objects
	  unless @task.blank?
		#create new Task object and save the value
		@task = Entry.create({:task => @task})
	  end

	    @tasks = Entry.all
	    respond_to do |format|
			format.html {redirect_to tasks_path, notice: "Task was deleted"}
		end
	end

	def update

	end

	def destroy
		@task = Entry.find(params[:id])
		@task.destroy
		@tasks = Entry.all

		respond_to do |format|
			format.html {redirect_to tasks_path, notice: "Task was deleted"}
		end
	end
end
