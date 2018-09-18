export const selectHouse = ({ houses }, houseId) => {
  return houses[houseId] || {reviewIds : []};
};

export const selectReviewsForHouse = ({ houses, reviews }, house) => {
  return house.reviewIds.map(reviewId => reviews[reviewId]);
};
