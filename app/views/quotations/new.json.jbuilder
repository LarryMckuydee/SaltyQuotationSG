# json.name @quotation.name
# json.extract! @brand, :id,:name

# json.array!(@brand) do |brand|
#   json.extract! brand, :id ,:name
#   json.url quotations_url(brand, format: :json)
# end

# json.array!@brand do |bf|
#   json.extract! bf,:name
#   json.array!bf.fit do |f|
#     json.extract! f,:name
#   end
#   json.url quotations_url(bf.fit, format: :json)
# end
#
# json.array!(@shirt_type) do |shirt_type|
#   json.extract! shirt_type, :id ,:name
#   json.url quotations_url(shirt_type, format: :json)
# end
