Specs:
- [] Using Ruby on Rails for the project
- [] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) -
      - User has_many Teachers
      - Teacher has_many Teachings

- [] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
      - Teacher belongs_to User
      - Teaching belongs_to Teacher

- [] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
      - User has_many Teachings, through => Teachers

- [] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
      - User Submittable Attribute on Teachers is :name.

- [] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
      - Teacher => validates_presence of :name
      - Teaching => validates_presence of :title
      - User => validates_uniqueness of :email
      - User => Validates password, case_sensitive true
      - User => validates password length
      - User => Validates presence of email, password and name

- [] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /teachers/most_common)

- [] Include signup - Devise
- [] Include login - Devise
- [] Include logout - Devise
- [] Include third party signup/login - Devise/OmniAuth with Google
- [] Include nested resource show or index -
        - /teachers/1/teachings

- [] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [] The application is pretty DRY
- [] Limited logic in controllers
- [] Views use helper methods if appropriate
- [] Views use partials if appropriate

----

Specs:
- [] Must have a Rails Backend and new requirements implemented through JavaScript.
- [] Makes use of ES6 features as much as possible(e.g Arrow functions, Let & Const, Constructor Functions)
- [] Must translate the JSON responses into Javascript Model Objects using either ES6 class or constructor syntax.
- [] Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model
- [] Serialization JSON Backend.
- [] Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model
- [] Serialization JSON Backend.
- [] Your Rails app must reveal at least one has-many relationship through JSON that is then rendered to the page.
- [] Must use your Rails application and Javascript to render a form for creating a resource that submits dynamically.
- [] At least one of the JS Model Objects must have a method on the prototype.

ReadMe:
- [] Application Description
- [] Installation guide (e.g. fork and clone repo, migrate db, bundle install, etc)
- [] Contributors guide (e.g. file an issue, file an issue with a pull request, etc)
- [] Licensing statement at the bottom (e.g. This project has been licensed under the MIT open source license.)

General:
- [] You have a large number of small Git commits
- [] Your commit messages are meaningful
- [] You made the changes in a commit that relate to the commit message
- [] You don't include changes in a commit that aren't related to the commit message
