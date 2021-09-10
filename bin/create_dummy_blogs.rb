blogs.transaction do
  (1..100).each do |i|
      blogs.create(:blog_name => "name #{i}",
                   :content => "#{i}",)
  end
end
