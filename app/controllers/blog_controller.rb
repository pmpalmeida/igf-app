class BlogController < ApplicationController
  skip_before_action :authenticate_user!


  def post0
    @post = posts_all[0]
  end

  def post1
    @post = posts_all[1]
  end

  def post2
    @post = posts_all[2]
  end

  def post3
     @post = posts_all[3]
  end

  def post4
     @post = posts_all[4]
  end

  def post5
     @post = posts_all[5]
  end

  def post6
     @post = posts_all[6]
  end

  def post7
     @post = posts_all[7]
  end




private

def posts_all
  postsYAML = YAML.load(ERB.new(File.read("config/post.yml")).result(binding))
  posts_all = postsYAML.collect { |k, v| v }
  #posts_all = posts_all.reverse
end



end
