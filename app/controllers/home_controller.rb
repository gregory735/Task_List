class HomeController < ApplicationController
    def welcome
        #render plain: "olá mundo!"
    end
end

class HomeController < ApplicationController
    def welcome
        @tasks = Task.all
    end
end

class TasksController < ApplicationController
    def edit
        @task = Task.find(params[:id])
    end
end