class ExpensesController < ApplicationController
  def index
    if request.xhr?  #if an ajax request...
      target_date_str = params['target_date']

      if target_date_str == "all"
        @expenses = Expense.all
      else
        @expenses = Expense.where(date: Date.strptime(target_date_str, "%Y-%m-%d"))
      end

      render partial: "shared/table" 

    else  #then not an ajax request
      @expenses = Expense.all
    end

  end
  
  def new
    @expense = Expense.new
  end
end
