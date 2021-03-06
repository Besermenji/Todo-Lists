<<<<<<< HEAD
## Assignment for Module #4: Nested Resources, Security, and Pagination
The overall goal of this assignment is to assess your ability to implement:

  * Nested resources
  * Authenication
  * Authorization
  * Pagination

The functional goal of this assignment to implement a web application to 
manage TodoItems.

### Functional Requirements

1. Start with the application completed in module 2. This will have defined 
all the models and relationships required for this assignment:

    * User
    * TodoList
    * TodoItem

    An Entity Relationship (ER) diagram is provided below to help depict each 
    Model's relationship:

        +------+ 1    * +----------+ 1    * +----------+
        | User |--------| TodoList |--------| TodoItem | 
        +------+        +----------+        +----------+

    We will not be using the optional `Profile` model class in this assignment.

2. Implement access to `TodoItem` as a nested resource of `TodoList`
=======
## Assignment for Module #3: ActionPack
The overall goal of this assignment is to assess your ability to implement and 
customize Rails scaffold. 

This includes:

* Creating a Rails scaffold for a Model, View, and Controller (MVC)
* Modifying the runtime application flow
* Re-using and customizing partial views
* Sharing state through the controller attributes with the view
* Implementing an end-to-end display of a custom query result

The functional goal of this assignment is to implement a web application to manage 
TodoItems.

### Functional Requirements

1. Create the scaffold for the following model type:

    * TodoItem

2. Create the Database (DB) schema for `TodoItem`

3. Change the default scaffolding to route to the `index` page versus the `show` 
   page after a TodoItem is created

4. Remove the `Edit` link from the `index` view.

5. Modify the TodoItem view partial to display the `Completed` property
   when a TodoItem is being edited and not during creation.

6. Display the number of completed TodoItems.
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

3. Lock down the application to only authenticated users.

<<<<<<< HEAD
4. Limit access to resources associated with the logged in user.

5. Access unbounded collections of resources using pagination.

### Getting Started

1. Start with a copy of your `todolists` solution from the module 2 assignment

2. From your `todolists` application root directory, remove the unit test 
from module 2.

    ```shell
    `-- spec
        `-- assignment_spec.rb
=======
1. Create a new Rails application called `todolists`

2. Add the following specification to your Gemfile

    ```ruby
    group :test do
      gem 'rspec-rails', '~> 3.0'
      gem 'capybara'
    end
    ```
3. Run the `bundle` command to resolve new gems 

4. From the `todolists` application root directory, initialize the rspec tests 
   using the `rails generate rspec:install` command

    ```shell
      [todolists]$ rails generate rspec:install
          create  .rspec
          create  spec
          create  spec/spec_helper.rb
          create  spec/rails_helper.rb
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
    ```

    ```shell
    $ rm spec/assignment_spec.rb
    ```

<<<<<<< HEAD
3. Download and extract the starter set of boostrap files for this assignment. 
=======
5. Download and extract the starter set of bootstrap files. 
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

    ```shell
    |-- Gemfile
    |-- db
<<<<<<< HEAD
    |    `-- seeds.rb
    `-- spec
         -- start.rb
         -- nested_resources.rb
         -- security.rb
         -- authorization.rb
         -- authentication.rb
         -- pagination.rb
         -- end2end.rb
    ```

    * Overwrite your existing Gemfile with the Gemfile from the bootstrap fileset. 
    They should be nearly identical, but this is done to make sure the gems and 
    versions you use in your solution can be processed by the automated Grader 
    when you submit. Any submission should be tested with this version of the file.

        NOTE the Gemfile includes a section added for the last assignment:
=======
    |    `-- seed.rb
    `-- spec
        `-- features
            `-- module3_action_pack_spec.rb
    ```

    * overwrite your existing Gemfile with the Gemfile from the bootstrap fileset. They 
      should be nearly identical, but this is done to make sure the gems and versions you use in 
      your solution can be processed by the automated Grader when you submit. Any submission
      should be tested with this version of the file.

    * overwrite your existing `db/seed.rb` file using the `seeds.rb` provided
      with the bootstrap fileset. The bootstrap `seeds.rb` file contains some test 
      data that will be useful during development and unit tests.

    * add the `spec/features/module3_action_pack_spec.rb` file provided with the 
      bootstrap fileset to your `todolists` application. Within your application
      root directory, you will first need to create a corresponding `spec/features` 
      sub-directory to place the `module3_action_pack_spec.rb` file. 
      This file contains tests that will help determine whether you have completed 
      the assignment.
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

        ```ruby
        group :test do
            gem 'rspec-rails', '~> 3.0'
            gem 'capybara'
        end
        ```

<<<<<<< HEAD
        as well as a new definition for the following items:
=======
    ```shell
    $ rspec 
    ...
    19 examples, 1 failure, 17 pending
    ```
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

        - `bcrypt` gem uncommented for use with `has_secure_password` 
        - `tzinfo-data` gem conditionally included on Windows platforms
        - `will_paginate` added for implementing paging

            ```ruby
            # Use ActiveModel has_secure_password
            gem 'bcrypt', '~> 3.1.7'

<<<<<<< HEAD
            # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
            gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

            gem 'will_paginate', '~> 3.0.6'
            ```

    * Overwrite your existing `db/seeds.rb` file from the bootstrap fileset. This 
    file contains some test data that will be useful during development and 
    unit tests.

    * Add the `spec/*.rb` files provided with the bootstrap fileset to the
    corresponding  `spec/` directory within your `todolists` application. 
    These files contain tests that will help determine whether you have 
    completed the assignment.

4. Run the `bundle` command to make sure all gems are available.

    ```shell
    $ bundle
    ```

5. Run the rspec test(s) to receive feedback. `rspec` must be run from the root 
directory of your application.  There are several test files provided for this 
assignment. Many of those files are designed to test your code at specific points 
as you proceed through the technical requirements of this assignment.  As such, 
many tests will fail if executed after additional technical requirements have 
been completed. Initially, majority of tests will (obviously) fail until 
you complete the requirements necessary for them to pass.

    ```shell
    $ rspec 
    ...
    (N) examples, 1 failure, (N) pending
    ```

    To focus test feedback on a specific step of the requirements, add the specific
    file (path included) with the tests along with "-e rq##" to the rspec command 
    line to only evaluate a specific requirement. Pad all step numbers to two 
    digits.

    ```shell
    $ rspec spec/start_spec.rb -e rq1.0
    ...
    (N) example, 0 failures
    ```

=======
    Module #3
      rq01
        Generate Rails application
          must have top level structure of a rails application

    Finished in 0.00465 seconds (files took 1.56 seconds to load)
    1 example, 0 failures
    ```

>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
7. Implement your solution to the technical requirements and use the rspec tests 
to help verify your completed solution.

8. Submit your Rails app solution for grading.

### Technical Requirements

<<<<<<< HEAD
1. Starting with a copy of your module 2 solution, this solution should already 
have `User`, `TodoList`, and `TodoItem` models defined with the following 
properties and relationships. This assignment does not use the `Profile` model 
class but it will not hurt to include it.

    * User
        - username - a string to hold account identity
        - password_digest - a string to hold password information
        - todo_lists - a 1:many relationship with `TodoList` (i.e., User `has_many` 
        todo_lists).
        
        Add appropriate options to have the `User` model class delete a `TodoList` 
        in a cascading fashion

    * TodoList
        - list_name - a string name assigned to the list
        - list_due_date - a date when todo items in the list are to be complete. 
          This is a date. We are not concerned with the time of day.
        - user - a many:1 relationship with `User` (i.e., TodoList `belongs_to` User)
        - todo_items - a 1:many relationship with `TodoItem` (i.e., TodoList 
        `has_many` todo_items).
          
        Add appropriate options to have the `TodoList` model class delete a 
        `TodoItem` in a cascading fashion

=======
1. Create a new Rails app called `todolists`. Use the Gemfile provided
in the bootstrap files (as stated in Step 5 within the Getting Started section). 
Do not change this Gemfile from what is provided or your submitted solution may 
not be able to be processed by the grader (i.e., do not add any additional gems 
or change gem versions).

    ```shell
    $ rails new ...
    $ rspec -e rq01
    ```

2. Using the `rails generate scaffold` command, create a Rails MVC artifact for 
a TodoItem that has the following business-related fields: 

>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
    * TodoItem
        - due_date - date when the specific task is to be complete
        - title - a string with short name for specific task
        - description - a string with narrative text for specific task
        - completed - a boolean value (default=false), indicating whether item is complete
<<<<<<< HEAD
        - todo_list - a many:1 relationship with TodoList - TodoItem belongs_to TodoList

        ```shell
        $ rake db:migrate
        $ rspec spec/start_spec.rb
        ```

2. Add `has_secure_password` to the `User` model class. This will define a `password` 
property that will get processed into an encrypted hash stored in the 
`password_digest` database column. We won't use this capability immediately -- 
but it is necessary to define it early in the assignment so that the data model 
works with the `db/seeds.rb` file in the next step.

    ```shell
    $ rspec spec/security_spec.rb -e rq02
    ```

3. Seed the database with the `db/seeds.rb` file. This will load sample `Users`, 
`TodoLists`, and `TodoItems`. If this loads correctly -- your models and database 
are setup correctly and you are ready to start accessing the data through web 
pages produced by the controller and views.

    ```shell
    $ rake db:seed
    $ rails c
    > User.first.todo_lists.count
     => (N>0)
    ```

4. Use the `rails g scaffold_controller` command to create controller and view 
artifacts for `TodoLists` and `TodoItems`.

    ```shell
    $ rails g scaffold_controller TodoList list_name list_due_date:date
    $ rails g scaffold_controller TodoItem title due_date:date description:text completed:boolean
    ```

    Update `config/routes.rb` to

    * Access `:todo_list` resources at URI `/todo_lists`
    * Access `:todo_item` resources at URI `/todo_lists/:todo_list_id/todo_items`
    * Make the `todo_list#index` action the root of the application

    (Hint: refer to module 4, lesson 1, lecture:`Nested Resources: Part1` for 
    details on how this is done)

    At this point, `TodoList` is defined as a global resource (with a root-level 
    URI) and `TodoItem` is defined as a nested resource, always scoped below the 
    `TodoList` it belongs to. Our application is not written to work that way, 
    so expect some errors as we begin the modifications.

    If you have not yet done so -- please start the server and also take a look 
    at your defined URI routes.

    ```shell
    $ rails s   #in separate console
    ```

    ```shell
    $ rake routes   #in original console
    $ rspec spec/nested_resources_spec.rb -e rq04
    ```

5. Update the `TodoList` to display `TodoItems` as a nested resource in the 
`todo_list#show` page (`todo_lists/show.html.erb`).

    a. Copy the table from the `todo_items#index` page (`index.html.erb`) and
    paste the table into the `todo_lists#show` page (`todo_lists/show.html.erb`)

    b. Change global `@todo_items` references to scoped `@todo_list.todo_items` 
    references below:

    ```html
    from: <% @todo_items.each do |todo_item| %>
    to:   <% @todo_list.todo_items.each do |todo_item| %>
    ```
    
    c. Remove the `Edit` link for `TodoItems`

    d. Change the link_to parameters from global `todo_item` references to provide 
    fully qualified `[@todo_list, todo_item]` references as an array.

    ```html
    from: <td><%= link_to 'Show', todo_item %></td>
    to:   <td><%= link_to 'Show', [@todo_list, todo_item] %></td>
    ```

    ```html
    from: <td><%= link_to 'Destroy', todo_item, method: :delete, data: ...
    to:   <td><%= link_to 'Destroy', [@todo_list, todo_item], method: :delete, data: ...
    ```
    
    ```shell
    $ rspec spec/nested_resources_spec.rb -e rq05b
    ```
    
    NOTE: This test case is for incremental testing only and WILL FAIL after 
    authentication infrastructure is in place later in this assignment.

    ```shell
    $ rspec spec/nested_resources_spec.rb -e rq05d
    ```

    NOTE: This test case is for incremental testing only and WILL FAIL after 
    authentication infrastructure is in place later in this assignment.

    e. Add a link to create a 'New Todo Item'. (hint: Use the `link_to` and 
    `new_todo_list_todo_item_path(@todo_list)` helpers to produce a link tag)

    ```shell
    $ rspec spec/nested_resources_spec.rb -e rq05e
    ```

    Note how the `new_todo_list_todo_item_path(@todo_list)` is formed from what 
    is produced in `rake routes`. 

    ```
    $ rake routes
    new_todo_list_todo_item GET /todo_lists/:todo_list_id/todo_items/new(.:format) todo_items#new
    ```

    * we want to invoke `todo_items#new` when we create a new `TodoItem`
    * that action is mapped to using the `/todo_lists/:todo_list_id/todo_items/new(.:format)` 
    URI and GET method. We are required to supply a :todo_list_id
    * `new_todo_list_todo_item_path` is formed by adding `_path` to `new_todo_list_todo_item`
    * the :todo_list_id is filled in by passing in a `@todo_list` when calling it
    * GET is provided by `new_todo_list_todo_item_path`

    Notice that the `TodoItems` now display on the `todo_list#show` page by 
    navigating to a specific `TodoList`. However, the `TodoItem` URIs are not 
    yet implemented in the `TodoItem` controller (next step).

    ```shell
    $ rspec spec/nested_resources_spec.rb -e rq05
    ```

6. Modify the `TodoItem` controller to work as a nested resource by implementing 
the following. Note that your views with `TodoItem` URI references will not work 
until these changes are made and the links and forms are updated to include the 
scoping `TodoList` for each referenced `TodoItem`. The unit tests, however, will 
be able to make calls into your back-end to determine all URIs are implemented 
properly -- prior to moving on to the views.

    a. Remove the old URI comments or replace them to have the following form 
    since all calls to a `TodoItem` will now be scoped below a `TodoList`. Use 
    the todo_item output of `rake routes` to give you a head start.

    ```ruby
    $ rake routes
    #METHOD /todo_list/:todo_list_id/todo_items
    #METHOD /todo_list/:todo_list_id/todo_items/:id
    ```
    b. Remove the `todo_item#index` method and `views/todo_items/index` pages. 
    This will no longer be called since all `TodoItem` displays will be scoped to 
    a particular `TodoList`. We will get the `TodoList` and call 
    `todo_list.todo_items()` instead.

    c. Add a private helper method called `set_todo_list` that sets the 
    `@todo_list` instance variable from the `:todo_list_id` property passed in 
    via the params. (Hint: try the following in the `rails console` if you need 
    practice locating a TodoList by id)

    ```ruby
    $ rails c
    > list_id=TodoList.first.id
    > @todo_list=TodoList.find(list_id)
    ```

    d. Update the private helper method called `set_todo_item` to scope its find 
    command to the `todo_items` of a specific `@todo_list` list. (Hint: try the 
    following in the `rails console` if you need practice locating a `TodoItem` 
    by id scoped to a `TodoList`)

    ```ruby
    $ rails c
    > list_id=TodoList.first.id
    > @todo_list=TodoList.find(list_id)
    > item_id=@todo_list.todo_items.first.id
    > @todo_item=@todo_list.todo_items.find(item_id)
    ```

    e. Invoke the `set_todo_list` method before each method in the controller is 
    executed using a `before_action`

    f. Update the `todo_item#new` action to return a new `TodoItem` instance that is 
    initialized to reference its parent `@todo_list`, which is provided by `set_todo_list`.  
    (Hint: try the following the `rails console` if you need practice creating a 
    new instance of a `TodoItem` associated with a `TodoList`. Notice the new 
    TodoItem is never saved to the database during this call. However, what is 
    passed back to the form is a TodoItem prototype that has its foreign key 
    reference set to the `TodoList` so that `TodoList` can be referenced when the 
    `TodoItem` is finally created in a follow-on POST)

    ```ruby
    $ rails c
    > @todo_list=TodoList.first
    > @todo_item=@todo_list.todo_items.new
    ```

    g. Update the `todo_item#create` to create a new `TodoItem` instance based 
    on the `todo_item_params` as before. Except now create this instance 
    associated with the `@todo_list` provided by `set_todo_list`. (Hint: try the 
    following in the `rails console` if you need practice creating a new instance 
    of a `TodoItem` associated with a `TodoList`. Notice that in this case -- 
    `save()` is being called on the `todo_list`, causing the new `TodoItem` to 
    be inserted into the database.)

    ```ruby
    $ rails c
    > @todo_list=TodoList.first
    > @todo_item=@todo_list.todo_items.new(title:"my item")
    > @todo_list.save()
    ```

    h. Update the HTML redirect of the `todo_item#create`, `todo_item#update`, 
    and `todo_item#destroy` methods to do to the `todo_list#index` page. (Hint: 
    use the `@todo_list` variable within `redirect_to` to express the 
    `todo_list#index` page URI)


7. Update `TodoList` and `TodoItem` views to adjust the links and forms in these 
views to work with the updated URIs and `TodoItem` controller.

    a. Update the links on the `todo_items#show` page (`todo_items/show.html.erb`) 
    to include the `TodoList` the `TodoItem` is a member of.

    * Change the `Edit` link_to path parameter from the global `edit_todo_item_path` 
    (that no longer exists) to the new `edit_todo_list_todo_item_path`. This new 
    method requires both `@todo_list` and `todo_item' passed in as separate 
    arguments (not as an array -- as in previous requirement).

        ```html
        from: <%= link_to 'Edit', edit_todo_item_path(@todo_item) %> |
        to:   <%= link_to 'Edit', edit_todo_list_todo_item_path(@todo_list, @todo_item) %> |
        ```

    * Change the `Back` link_to path parameter from to global `edit_items_path` 
    (that no longer exists) to the `todo_listi#show` page it is a member of. 
    This requires using the `@todo_list`.

        ```html
        from: <%= link_to 'Back', todo_items_path %>
        to:   <%= link_to 'Back', @todo_list %>
        ```

        ```shell
        $ rspec spec/nested_resources_spec.rb -e rq07a
        ```

    b. Update the links on the `todo_items#edit` page (`todo_items/edit.html.erb`) 
    to include the `TodoList` the `TodoItem` is a member of.

    * Change the `Show` link_to path parameter from a global `@todo_item` reference 
    to include its `@todo_list`. This requires using both `@todo_list` and 
    `@todo_item' passed in as separate arguments as an array.

        ```html
        from: <%= link_to 'Show', @todo_item %> |
        to:   <%= link_to 'Show', [@todo_list, @todo_item] %> |
        ```

    * Change the `Back` link_to path parameter from a global `todo_items_path` 
    (that no longer exists) to reference the `TodoList` it is a member of. 
    This new method requires the `@todo_list` passed in as a single argument.

        ```html
        from: <%= link_to 'Back', todo_items_path %>
        to:   <%= link_to 'Back', @todo_list %>
        ```

    c. Update the form parameters on the `TodoItems` form partial page 
    (`todo_items/_form.html.erb`) to include the `TodoList` the `TodoItem` 
    is a member of.

    * Change the link_to parameters from global `todo_item` references to provide 
    fully qualified `[@todo_list, @todo_item]' references as an array.

        ```html
        from: <%= form_for(@todo_item) do |f| %>
        to:   <%= form_for([@todo_list, @todo_item]) do |f| %>
        ```

        ```shell
        $ rspec spec/nested_resources_spec.rb -e rq07c
        ```

    d. Update the links on the `todo_items#new` page (`todo_items/new.html.erb`) 
    to include the `TodoList`.

    * change the `Back` link_to path parameter from a global `todo_items_path` 
    (that no longer exists) to reference the `TodoList` it is a member of. 
    This new method requires the `@todo_list` passed in as a single argument.

        ```html
        from: <%= link_to 'Back', todo_items_path %>
        to:   <%= link_to 'Back', @todo_list %>
        ```

        ```shell
        $ rspec spec/nested_resources_spec.rb -e rq07d
        ```

    e. Make the display of `completed` conditional on the `todo_item` being edited 
    versus new. Users should not be allowed to see/change the `completed` 
    property for a new `TodoItem`. (Hint: edited objects are persisted and can 
    be tested using `persisted?`. Objects can also be tested with `.new_record?`)

    ```shell
    $ rspec spec/nested_resources_spec.rb -e rq07e
    ```
=======

    It is assumed that this type will also contain the `id`, `created_at`, and 
    `updated_at` fields. Migrate the database as a part of this requirement 
    to populate the database with the TodoItem schema.


    ```shell
    $ rails g scaffold ... 
    $ rake db:migrate 
    $ rspec -e rq02
    ```

    Note that the above `rake db:migrate` command will execute against the 
    `db/development.sqlite3` database instance. The capybara rspec tests will 
    use the `db/test.sqlite3` database instance and automatically run `db:migrate`
    and `db:seed` on its own. The default database for all commands is 
    the development database.

    * Use `rake db:seed RAILS_ENV=test` to execute the db/seed.rb against the test database.
    * Use `rails db -e test` to access the test database.
    * Use `rails c test` to use the Rails console to interact with the test database.

    Since the grader uses a separate `test` database instance, you can modify the state of the `development`
    database as you wish during your development.

    We will have specific interest in the following artifacts.

    ```shell
    db/migrate/..._create_todo_items.rb
    app/models/todo_item.rb
    app/controllers/todo_items_controller.rb
    app/views/todo_items/index.html.erb
    app/views/todo_items/edit.html.erb
    app/views/todo_items/show.html.erb
    app/views/todo_items/new.html.erb
    app/views/todo_items/_form.html.erb
    ```

3. Seed the database with the `db/seeds.rb` file supplied in the student-start 
bootstrap files. Do not modify this file. The grader expects test results to be 
based on this input.

    ```shell
    $ rake db:seed 
    $ rspec -e rq03
    ```

4. Start the Rails server and navigate to the todo_items index page.

    ```shell
    $ rails s
    ```
    [http://localhost:3000/todo_items](http://localhost:3000/todo_items)

    ```shell
    $ rspec -e rq04
    ```

5. Using the `New Todo item` link, create a new TodoItem (with any data).
   After a new Todo Item has been successfully created, notice the page that 
   it navigated you to. This is the show page.

    ```shell
    $ rspec -e rq05
    ```

    * Review how the `submit` action in the view invokes a `create` URI when 
      the user presses the `Create Todo Item` button. 

        ```shell
        app/views/todo_items/new.html.erb
        app/views/todo_items/_form.html.erb
        ```


        ```html
        <%= form_for(@todo_item) do |f| %>
          ...
          <div class="actions">
            <%= f.submit %>
          </div>
        <%= end %>
        ```

    * Notice that the `create` method in the controller handles the `create` URI call passed 
      by the view and persists the new TodoItem. When the save operation is completed, 
      the controller then redirects the flow to the `show` URI for the @todo_item.

        ```ruby
        # POST /todo_items
        # POST /todo_items.json
        def create
          @todo_item = TodoItem.new(todo_item_params)

          respond_to do |format|
            if @todo_item.save
              format.html { redirect_to @todo_item, notice: 'Todo item was successfully created.' }
              format.json { render :show, status: :created, location: @todo_item }
            ...
            end
          end
        end
        ```

    * Notice that the `show` method in the controller retrieves the persisted 
      TodoItem by `:id`. By default the flow continues to the `show` page, 
      where the view displays the details of the newly created @todo_item.

        ```ruby
        class TodoItemsController < ApplicationController 
          before_action :set_todo_item, only: [:show, ...] 

        ... 

        # GET /todo_items/1
        # GET /todo_items/1.json
        def show
        end 

        ...

        private
            # Use callbacks to share common setup or constraints between actions.
            def set_todo_item
              @todo_item = TodoItem.find(params[:id])
            end

            ...
        ```


        ```shell
        app/views/todo_items/show.html.erb
        ```


        ```html
        <p>
          <strong>Due date:</strong>
          <%= @todo_item.due_date %>
        </p>

        <p>
          <strong>Title:</strong>
          <%= @todo_item.title %>
        </p>

        <p>
          <strong>Description:</strong>
          <%= @todo_item.description %>
        </p>

        <p>
          <strong>Completed:</strong>
          <%= @todo_item.completed %>
        </p>
        ```

    * Note the mapping of helper_method_prefix, method/URI, and controller#method
      mappings shown by the `rake routes` command. This shows which action in the 
      controller will be called when a method/URI is invoked. 
        
        - The controller method is optional and the flow will continue
          to the view of the same name as the intended action when that
          occurs. 
        - If a controller method does exist and matches the action's name, it has
          the ability to add member @variables with state for the views to
          use (e.g., set_todo_item called prior to show). 
        - If the controller method does not change the route (e.g., show does
          not change the route), then the flow will continue to the view of
          the same name as the action.
        - If the controller method changes the route through a `redirect_to`
          (e.g., the create action re-directs the flow to the show URI), the 
          flow will follow the newly defined path by sending the HTTP client 
          a re-direct.
        - If the controller method changes the route using a `render` (e.g.,
          the create action redenders a JSON document response when JSON is requested),
          the specified view is returned directly to the client.


        ```shell
        $ rake routes
                Prefix Verb   URI Pattern                    Controller#Action
            todo_items GET    /todo_items(.:format)          todo_items#index
                       POST   /todo_items(.:format)          todo_items#create
         new_todo_item GET    /todo_items/new(.:format)      todo_items#new
        edit_todo_item GET    /todo_items/:id/edit(.:format) todo_items#edit
             todo_item GET    /todo_items/:id(.:format)      todo_items#show
                       PATCH  /todo_items/:id(.:format)      todo_items#update
                       PUT    /todo_items/:id(.:format)      todo_items#update
                       DELETE /todo_items/:id(.:format)      todo_items#destroy
        ```


6. Modify the flow so that the user is directed back to the `index`
page after creating a TodoItem instead of the `show` page. (Hint: you
are changing the URI redirected by the controller's `create` method.
Use `rake routes` to help determine the appropriate helper_method_prefix, URI, 
and controller#method mappings.  Append `_url` to the helper method prefix
when implementing this redirection.)

    ```shell
    $ rake routes
    $ rspec -e rq06
    ```

7. Remove the `Edit` link from the `index` page view. (You will still be able to 
access edit from the `show` page view).

    ```shell
    $ rspec -e rq07
    ```

8. Add conditional logic to the `_form.html.erb` partial so that it only displays the 
`completed` property when editing and not when creating. 
(A TodoItem cannot possibly be done before it is created;)
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

    ```shell
    $ rspec spec/nested_resources_spec.rb -e rq07
    ```

<<<<<<< HEAD
8. Verify that you have implemented a password login capability for the `User` 
model. You implemented this in an earlier step to allow the provided `db/seeds.rb` 
to immediately work with passwords. This this should just be a sanity check and 
review of how `has_secure_password` works.

    * Using the `rails console`, verify that you fail authentication when using the 
    wrong password for a specific `User`. You can locate the `username` and 
    assigned `password` in the `db/seeds.rb` file.

        ```ruby
        $ rails c
        > user=User.where(username:"rich").first
        > user.authenticate("wrongpassword")
         => false 
        ```

    * Using the `rails console`, verify that you can authenticate using a valid 
    password for a specific `User`.

        ```ruby
        > user=User.where(username:"rich").first
        > user.authenticate("123abc")
         => #<User id: 277, username: "rich", password_digest: "$2a...
        ```

    * Using the `rails console`, verify that you can authenticate and get the 
    `TodoLists` for an authenticated `User`.

        ```ruby
        > user=User.where(username:"rich").first
        > user.authenticate("123abc").todo_lists.count
         => 49 #seed data randomly generated
        ```

        ```shell
        $ rspec spec/security_spec.rb -e rq08
        ```

9. Create a new controller to manage the user's `session` when interacting with 
the server.

    a. Use the `rails g controller` command to create a `Sessions` controller 
    with the following actions:

    * new 
    * create 
    * destroy

    b. Clean up the `config/routes.rb` file edited by the `rails g controller` 
    command to be the following:

    * generated:

        ```
        get 'sessions/new'
        get 'sessions/create'
        get 'sessions/destroy'
        ```

    * change to:

        ```
        resources :sessions, only: [:new, :create, :destroy] 
        ```

    c. Map the GET `/login` action to `sessions#new` in `config/routes.rb`. 
    Have this be referred to as the `login` resource so `rake routes` generates 
    a `login`_path helper.

    ```
    get "/login" => "sessions#new", as: "login"
    ```

    d. Map the DELETE `/login` action to `sessions#destroy` in `config/routes.rb`. 
    Have this referred to as the `logout` resource so `rake routes` reports a 
    `logout`_path helper.

    ```
    delete "/logout" => "sessions#destroy", as: "logout"
    ```

    ```shell
    $ rspec spec/security_spec.rb -e rq09
    ```

10. Implement the `Sessions` controller class and view. This should permit a 
caller to willingly navigate to the `/login` page, login with a correct password, 
and proceed to the root URI. Nothing will stop an un-authenticated user from 
accessing the same list at this time. (Hint: the information to complete this 
step is contained in module 4, lesson 2, lecture:`Sessions and Controller View`)

    a. Leave the `new` method in its default state. This will cause the route to 
    continue straight to `views/sessions/new.html.erb`.

    b. Update the `sessions#new` page (`views/sessions/new.html.erb`) 
    to declare a form:

    * for a `User` model type :user; this will cause the properties of the form 
    to be assigned to an instance of a `User` 
    * with a `sessions_path` URI; this will cause a POST to the 
    sessions#create URI to be invoked when a submit is called
    * with a :username text_field; this will assign the user input to the 
    `user[username]` property
    * with a :password password_field; this will obfuscate the user's password 
    while being typed and assign the user input to the `user[password]` property
    * with a submit action; this will submit the form to the server when pressed

        ```html
        <h1>Login</h1>
        <%= form_for(:user, url: sessions_path) do |f| %>
          <div class="field">
              <%= f.label :username %> <br/> 
              <%= f.text_field :username %>
          </div>
          <p/>
          <div class="field">
              <%= f.label :password %> <br/> 
              <%= f.password_field :password %>
          </div>
          <p/>
          <div class="actions">
              <%= f.submit "Login" %>
          </div>
        <% end %>
        ```

        ```shell
        $ rspec spec/security_spec.rb -e rq10b
        ```

    c. Implement the `create` method as follows:

    * get the user's `username` and `password` from the submitted form
    * find the user based on `username`
    * authenticate the user using the supplied `password`
    * if authenticated
      - store the user.id in the `session`
      - redirect the caller to the `root_path` of the application and supply a 
      flash.notice message announcing successful login
    * if not authenticated
      - redirect the caller to the `login_path` and supply an flash.alert message

        ```shell
        $ rspec spec/security_spec.rb -e rq10c
        ```

    d. Implement the `destroy` method as follows:

    * reset the `session`, wiping out the user's session and everything in it
    * redirect the caller to the `login_path` with a flash.notice message 
    announcing successful logout

        ```shell
        $ rspec spec/security_spec.rb -e rq10d
        ```

    e. Remove the `destroy` and `create` pages in the view, generated by 
    `rails g controller` since they are not being used.

    ```shell
    $ rspec spec/security_spec.rb -e rq10d
    ```

11. Require users to authenticate with your application prior to accessing anything 
except the login page. At the completion of these steps, no one should be able
to access anything except the login page -- until they successfully authenticate. 
(Hint: the information to complete this step is contained within module 4, 
lesson 2, lecture: `Authorization`)

    a. Define a `logged_in? helper method in the `ApplicationController` class 
    that evaluates to `true` if the there is a user associated with the session.

    b. Define a `current_user` helper method in the `ApplicationController` class 
    that finds and returns the `User` instance associated with the session. 

    c. Expose `logged_in?` and `current_user` as helper methods outside of the 
    controller using `helper_method`. Note these methods were already available 
    to all controller sub-classes. This designation makes them available to the 
    views as well.

    d. Define a `ensure_login` helper method in the `ApplicationController` class 
    that redirects the caller to the `login_path` if they are not logged in. 
    Note this method is available to all controller sub-classes in the application.

    e. Define that all methods perform `ensure_login` before they are called 
    using `before_action`.

    f. Create an exception to the above rule so that `sessions#new` and `sessions#create` 
    can be accessed by an unauthenticated user -- otherwise no one will be able 
    to access the login page.

    ```html
    class SessionsController < ApplicationController
      skip_before_action :ensure_login, only: [:new, :create]
    ```

    g. Update the `views/layouts/application.html.erb` page to include user/logout 
    information based on the current session state. With this snippet in place 
    -- you should be able to login and see the current_user.username displayed in 
    the right, top corner of the display.

    ```html
    <% if logged_in? %>
      <div style='float: right;'>
        Logged in as <%= current_user.username %> |
        <%= link_to "Logout", logout_path, method: :delete %> 
      </div>
    <% end %>
    ```

    ```shell
    $ rspec spec/authentication_spec.rb -e rq11
    ```

12. Update the application so that authenticated users can only have access to 
`TodoLists` associated with their specific user. This mostly involves updating 
the `TodoListController` to change all global `TodoList` commands to be scoped 
`current_user.todo_lists` commands. (Hint: If you need some practice accessing 
`TodoLists` for an authenticated user, try the following commands in the 
`rails console`.

    ```ruby
    $ rails c
    > user_id=User.where(username:"rich").first.id
    > current_user=User.find(user_id)
    > current_user.todo_lists.count
     => 49 #random assignment -- some number greater than 0
    ```

    This mostly involves changing the following from/to.

    ```ruby
    from: TodoList.x
    to:   current_user.todo_lists.x
    ```

    At this point, logged in users should only be able to see their `TodoList`s 

    ```shell
    $ rspec spec/authentication_spec.rb -e rq12
    ```

13. Add pagination to your application to help scale and manage methods that can 
return unbounded collections of information.

    a. Verify the `will_paginate` gem is added to your Gemfile.

    b. Update the `todolist#index` action to return a page of `TodoLists` associated 
    with the `current_user` that are up to 8 objects per_page. (Hint: If you are 
    not familiar with how `will_paginate` works, you can get some familiarity 
    using the `rails c` and Active Record commands. `will_paginate`
    adds an additional method to all model classes to be able to break find
    command results into pages and page results.)

    ```ruby
    $ rails c
    > 3.times {|n| p TodoList.paginate(page:n+1, per_page:1)}
    > p TodoList.paginate(page:1, per_page:1).total_pages
     => 101
    ```

    The page number will be available in the `params[:page]` property of the call.

    c. Add `will_paginate` to your `todolists#index` page and apply it to your
    `@todo_lists` result from the controller.

    At this point, logged in users should only be able to see their `TodoList`s and 

    ```shell
    $ rspec spec/pagination_spec.rb
    ```

14. Perform an end-to-end check of your work.  Before you do, you must remove the 
confirmation dialogs from your Destroy links since we are not using a webdriver 
that supports javascript for this assignment. Inside the todo_list show.html.erb 
file you will need to change the destroy link to eliminate the confirmation dialog:

    ```html
    from:  <%= link_to 'Destroy', [@todo_list, todo_item], method: :delete, data: { confirm: 'Are you sure?' } %>
    to: <%= link_to 'Destroy', [@todo_list, todo_item], method: :delete %>
    ```

    Do the same for todo_list index.html.erb

    ```html
    from: <%= link_to 'Destroy', todo_list, method: :delete, data: { confirm: 'Are you sure?' } %>
    to: <%= link_to 'Destroy', todo_list, method: :delete %>

    ```

    a. Login to the application as `rich`

    b. Access the first `TodoList` on the second page

    c. Complete the first `TodoItem` in that `TodoList` if not completed

    d. Create a new `TodoItem` for that `TodoList`

    e. Delete a `TodoItem` from that `TodoList`

    f. Create a new `TodoList`

    g. Delete a `TodoList`

    ```shell
    rspec spec/end2end_spec.rb
    ```
=======
    Hint: You can obtain the model object's persisted state using 
    `object.persisted?` or `object.new_record?` to help determine 
    if it is new or being edited. 

9. Display the number of completed TodoItems on the `index` page.

    1. Implement a class method in the `TodoItem` model that returns the count of completed TodoItems.
    2. Update the `index` method in the controller class to assign the count of completed TodoItems
       in a member variable (.e.g, @number_of_completed_todos)
    3. Display the count of completed TodoItems on the `index` page using a reference by the view
       -- to the member variable defined in the controller class. The grader is looking for the result to be 
       expressed as `Number of Completed Todos: #` anywhere on the page -- where `#` is the number of 
       completed todos. There must be a single space between the `:` and number.

    ```shell
    $ rspec -e rq09
    ```

    Hint: This should be very similar to how the view class gets the list of TodoItems
    from the controller using the `@todo_items` member variable.
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57

### Self Grading/Feedback

Some unit tests have been provided in the bootstrap files and provide 
examples of tests the grader will be evaluating for when you submit 
your solution. They must be run from the project root directory.

```shell
$ rspec (file)
...
<<<<<<< HEAD
(N) examples, 0 failures
=======
19 examples, 0 failures
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
```

You can run as many specific tests you wish be adding `-e rq## -e rq##`
```shell
$ rspec (file) -e rq01 -e rq02
```
Note that some of the earlier specs cannot be run once security has 
been fully enabled. Use the `end2end` test when complete. Each of the
individual requirements list specific specs that can be used during 
the time of that development.

### Submission

Submit an .zip archive (other archive forms not currently supported)
with your solution root directory as the top-level (e.g., your Gemfile
and sibling files must be in the root of the archive and *not* in a
sub-folder.  The grader will replace the spec files with fresh copies
and will perform a test with different query terms.

```text
|-- app
|   |-- assets
|   |-- controllers
|   |-- helpers
|   |-- mailers
|   |-- models
|   `-- views
|-- bin
|-- config
|-- config.ru
|-- db
|-- Gemfile
|-- Gemfile.lock
|-- lib
|-- log
|-- public
|-- Rakefile
|-- README.rdoc
|-- test
`-- vendor
```

#### Last Updated: 2015-10-25
<<<<<<< HEAD

=======
>>>>>>> 3e34aece3f86ec25e23938cf87176b281c263f57
