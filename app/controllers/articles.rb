get '/article/show/:id' do
  @article = Article.find(params[:id])    
  erb :"article_views/show"
end

get '/article/all' do
  @articles = Article.all
  erb :"article_views/all"
end


# get '/article/new/:id' do
#   erb :"article_views/new"
# end


# get '/article/edit/:id' do
  
#   erb :"article_views/edit"
# end 

# get '/article/delete/:id' do
  
#   erb :"article_views/delete"
# end

# post '/article/new' do
#   new_object = Article.new(params[article])
#   if new_object.save
#     redirect to("/article_views/all")
#   else
#     @errors = article.errors.messages
#     erb :"article_views/new"
#   end
# end

# post '/article/edit' do
#   edit_object = Article.find(params[:article_id])
#   edit_object.update_attributes(params)
#   redirect to('/')
# end

# post '/article/delete' do
#   article = Article.find( )
#   article.destroy
#   redirect to('/')
# end

