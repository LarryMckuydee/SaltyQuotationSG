json.array! @print_methods do |print_method|
  json.print_method_name print_method.name
  json.block_sizes print_method.block_sizes do |block_size|
    json.block_size_id block_size.id
    json.block_size_name block_size.name
  end
end
