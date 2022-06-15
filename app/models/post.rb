class Post < ApplicationRecord
	enum :status, [published:0, draft:1, archived:2]
end
