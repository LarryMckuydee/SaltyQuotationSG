json.prices @shirt_types do |shirt_type|
  json.shirt_type_name shirt_type.name
  json.shirt_type_fit_relations shirt_type.shirt_type_fit_relations do |b|
    json.shirt_type_id b.shirt_type_id
    json.fit_id b.fit_id
    json.fit_name b.fit.name
    json.prices b.price_cents
    json.start_quantity b.start_quantity
    json.end_quantity b.end_quantity
  end
end

json.shirt_types @shirt_types do |shirt_type|
  json.shirt_type_name shirt_type.name
  json.fits shirt_type.fits.select(:id,:name).distinct do |fit|
    json.fit_id fit.id
    json.fit_name fit.name
  end
end
