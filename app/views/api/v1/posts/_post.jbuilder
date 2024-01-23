json.id post.id

json.media_files do
  json.array! post.media_files do |media_file|
    json.id media_file.id
    json.path media_file.url
    json.content_type media_file.content_type
    json.signed_id media_file.signed_id
    json.name media_file.filename.sanitized
    json.size media_file.byte_size
  end
end
