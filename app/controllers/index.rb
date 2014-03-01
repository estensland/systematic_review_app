get '/' do
  @posts = Post.all.map(&:to_s)
  erb :index
end

post '/add_post' do
  Post.create(title: params[:post_title], text: params[:post_text])
  redirect to '/'
end

post '/edit_post' do
  @post = Post.where("title = ?", params[:current_title]).first
  @post.update_attributes(title: params[:new_title], text: params[:new_text])
  puts params
  redirect to '/'
end

post '/delete_post' do
  @post = Post.where("title = ?", params[:current_title]).first
  Post.delete(@post)
  redirect to '/'
end