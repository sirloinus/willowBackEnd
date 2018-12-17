class User < ApplicationRecord

    has_many :markers
    has_many :analysed_photos

end
