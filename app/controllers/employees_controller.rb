class EmployeesController < ApplicationController


    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all      
    end
    
    def show
        @employee = current_employee
    end
    
    def create
        employee = Employee.new(employee_params)

        if employee.valid?
            employee.save
            redirect_to employee
        else
            flash[:errors] = employee.errors.full_messages #key can be anything
            redirect_to "/employees/new" #new_employee_path
        end


        # redirect_to "/employees/#{employee.id}"
    end

    def edit
        @employee = current_employee
        @dogs = Dog.all

    end


    
    def update
        employee = Employee.new(employee_params)
        # @employee = current_employee.attributes = employee_params
        # byebug
        if employee.valid?
            current_employee.update(employee_params)
            redirect_to current_employee
        else
            flash[:errors] = employee.errors.full_messages
            redirect_to "/employees/#{current_employee.id}/edit"
        end


    end


    def current_employee
        @employee = Employee.find(params[:id])
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

end
