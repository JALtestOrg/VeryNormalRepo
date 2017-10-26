//how did I get here I'm not good at ActiveRecord.
(44..53).each do |i|
time_range = (Time.now - i.week)..(Time.now - (i - 1).week) 
loop_array = Item.sold.in_category_id(15724).joins(offers: :buyer).where(offers: {sold_on: time_range}).distinct.pluck(:email)
clothes_list << loop_array
end
