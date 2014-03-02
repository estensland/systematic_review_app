get '/' do
  @articles = Article.all
  erb :"article_views/all"
end
