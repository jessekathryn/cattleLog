Created app repo
made first commit
fleshed out read me
created rails new path to project

create skeleton from scaffold

tables

Join table
    cows (between user/field)
        has many users through cow
        has many fields through cow
    expenses (between cow/field)
        has many cows through expenses
        has many fields through expeneses 
    

  User 
    has many cows
    has many fields through cow
    has many expenses 

    has many expenses through cow
        User.first.cows.first.expenses
    
    has many expenses through field
        User.first field.first.exepnese 

#clcode:
    rails g scaffold User username:string email:string password_digest:string cows:string fields:string expenses:string --no-test-framework

  Cow
    belongs to user
    belongs to field
    belongs to expeneses

#clcode:
    rails g scaffold Cow name:string tag_number:integer cow_status:string age:integer birthdate:integer weight:integer health:string color:string user_id:integer notes:string field_name:string --no-test-framework

  Field
    belongs to expenses
    belongs to user
    has many cows

#clcode:
    rails g scaffold Field field_name:string acreage:integer crop:string coordinates:integer user_id:integer --no-test-framework

  Expense
    belongs to user
    has many cows
    has many fields


#clcode:
    rails g scaffold Expense expense_name:string truck:integer chemicals:integer conservation:integer depreciation:integer employees:integer feed:integer freight:integer gas:integer insurance:integer interest:integer mortgage:integer rent:integer repais:integer seeds:integer storage:integer supplies:integer taxes:integer vet:integer tools:integer fencing_land:integer calf:integer dues:integer misc_labor:integer professional_fees:integer user_id:integer field_name:string cow_tag_id:integer --no-test-framework