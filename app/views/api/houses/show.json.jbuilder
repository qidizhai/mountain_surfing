json.house do
  json.partial! '/api/houses/house', house: @house
  json.reviewIds @house.reviews.pluck(:id)
end

json.reviews do
  @house.reviews.each do |review|
    json.set! review.id do
      json.partial! 'api/reviews/review', review: review
    end
  end
end

json.users do
  @users.each do |user|
    json.set! user.id do
      json.partial! 'api/users/user', user: user
    end
  end 
end
