
get '/note/new/:id' do
  
  erb :"note_views/new"
end

get '/note/show/:id' do
  
  erb :"note_views/show"
end

get '/note/edit/:id' do
  
  erb :"note_views/edit"
end 

get '/note/delete/:id' do
  
  erb :"note_views/delete"
end

post '/note/new' do
  new_object = Note.new(params[note])
  if new_object.save
    redirect to("/note_views/all")
  else
    @errors = note.errors.messages
    erb :"note_views/new"
  end
end

post '/note/edit' do
  edit_object = Note.find(params[:note_id])
  edit_object.update_attributes(params)
  redirect to('/')
end

post '/note/delete' do
  note = Note.find( )
  note.destroy
  redirect to('/')
end

