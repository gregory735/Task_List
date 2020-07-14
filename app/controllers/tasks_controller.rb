class TasksController < ApplicationController
    def new
    end
    
    def create
        @task = Task.new(params.require(:task).permit(:description, :status)) #strong parameters
        @task.save # salva a tarefa criada pelo usuario no bd
        redirect_to root_path # redireciona usuario para pagina inicial ao enviar o formulario
    end

    def update
        @task = Task.find(params[:id])
        @task.update(params.require(:task).permit(:description, :status))
        redirect_to root_path #redireciona para o root
    end

    def destroy
        task = Task.find(params[:id]) #não precisa do @ no task pq não temos view que usara o obj
        task.destroy #destroi a tarefa de entrada
        redirect_to root_path
    end
end