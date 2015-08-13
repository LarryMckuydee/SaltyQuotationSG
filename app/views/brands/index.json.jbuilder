json.array! @brands do |brand|
  json.brand brand.name
  json.shirt_types brand.shirt_types do |shirt_type|
    json.shirt_type_id shirt_type.id
    json.shirt_type_name shirt_type.name
  end
end

# json.array! @brands do |brand|
#   json.brand brand.name
#   json.fits brand.fits do |fit|
#     json.fit_id fit.id
#     json.fit_name fit.name
#   end
#   json.shirt_types brand.shirt_types do |shirt_type|
#     json.shirt_type_id shirt_type.id
#     json.shirt_type_name shirt_type.name
#   end
# end
