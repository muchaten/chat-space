json.array! @users do |user|
  json.id  user.id
  json.name  user.name
  json.mail  user.email
  json.password  user.password
end