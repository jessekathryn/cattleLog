class User < ApplicationRecord
    has many cows
    has many fields through cow
    has many expenses

end
