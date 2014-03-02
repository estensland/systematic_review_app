
post '/note/add/:article_id' do
  new_object = Note.new(article_id: params[:article_id], text: params[:text])
  if new_object.save
    redirect to("/article/show/#{new_object.article_id}")
  else
    erb "something went wrong"
  end
end

post '/note/edit' do
  edit_object = Note.find(params[:note_id])
  edit_object.update_attributes(params)
  redirect to('/')
end

get '/note/delete/:note_id' do
  note = Note.find(params[:note_id])
  id = note.article_id
  note.destroy
  redirect to("/article/show/#{id}")
end

