class Blog < ApplicationRecord
  self.per_page = 2

  def self.search(params)

    where("LOWER(blog_name) = ?",params)
  end
end
