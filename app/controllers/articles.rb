get '/article/show/:id' do
  @article = Article.find(params[:id])    
  erb :"article_views/show"
end

get '/article/all' do
  @articles = Article.all
  erb :"article_views/all"
end