class TodoItemsController < ApplicationController
<<<<<<< HEAD
  before_action :set_all, only: [:show, :edit, :update, :destroy]
  # GET /todo_list/:todo_list_id/todo_items/1
  # GET /todo_list/:todo_list_id/todo_items/1.json
  def show
  end
  # GET /todo_list/:todo_list_id/todo_items/new
  def new
	  set_todo_list
	  @todo_item =@todo_list.todo_items.new 
  end
  # GET /todo_list/:todo_list_id/todo_items/1/edit
  def edit
  end
  # POST /todo_list/:todo_list_id/todo_items
  # POST todo_list/:todo_list_id/todo_items.json
  def create
	  set_todo_list
	  @todo_item = @todo_list.todo_items.new(todo_item_params)
    respond_to do |format|
      if @todo_item.save
        format.html { redirect_to @todo_list, notice: 'Todo item was successfully created.' }
        format.json { render :show, status: :created, location: @todo_list }
=======
  before_action :set_todo_item, only: [:show, :edit, :update, :destroy]

  # GET /todo_items
  # GET /todo_items.json
  def index
    @todo_items = TodoItem.all
    @number_of_completed_todos = TodoItem.count_todo_items
  end

  # GET /todo_items/1
  # GET /todo_items/1.json
  def show
    redirect_to todo_items_url 
  end

  # GET /todo_items/new
  def new
    @todo_item = TodoItem.new
  end

  # GET /todo_items/1/edit
  def edit
  end

  # POST /todo_items
  # POST /todo_items.json
  def create
    @todo_item = TodoItem.new(todo_item_params)

    respond_to do |format|
      if @todo_item.save
        format.html { redirect_to @todo_item, notice: 'Todo item was successfully created.' }
        format.json { render :show, status: :created, location: @todo_item }
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
      else
        format.html { render :new }
        format.json { render json: @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end
<<<<<<< HEAD
  # PATCH/PUT /todo_items/1
  # PATCH/PUT /todo_items/1.json
  def update
	  @todo_item = @todo_list.todo_items.find(params[:id])
    respond_to do |format|
	    if @todo_item.update_attributes(todo_item_params)
        format.html { redirect_to @todo_list, notice: 'Todo item was successfully updated.' }
        format.json { render :show, status: :ok, location:@todo_list }
      else
        format.html { render :edit }
        format.json { render json:  @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end
=======

  # PATCH/PUT /todo_items/1
  # PATCH/PUT /todo_items/1.json
  def update
    respond_to do |format|
      if @todo_item.update(todo_item_params)
        format.html { redirect_to @todo_item, notice: 'Todo item was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_item }
      else
        format.html { render :edit }
        format.json { render json: @todo_item.errors, status: :unprocessable_entity }
      end
    end
  end

>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
  # DELETE /todo_items/1
  # DELETE /todo_items/1.json
  def destroy
    @todo_item.destroy
    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to @todo_list, notice: 'Todo item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  



=======
      format.html { redirect_to todo_items_url, notice: 'Todo item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_item
<<<<<<< HEAD
	    @todo_item = @todo_list.todo_items.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_item_params
      params.require(:todo_item).permit(:title, :due_date, :description, :completed)
    end


      private
      def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
      end
 private
 def set_all
   set_todo_list
   set_todo_item
 end
=======
      @todo_item = TodoItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_item_params
	    params.require(:todo_item).permit(:due_date,:title,:description,:completed)
    end
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
end
