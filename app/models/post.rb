class Post < ActiveRecord::Base
 validates :title, presence: true,
		   length: { minmum: 5 }
end
