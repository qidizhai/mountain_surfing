import * as APIUtil from '../util/house_api_util';

export const RECEIVE_HOUSES = "RECEIVE_HOUSES";
export const RECEIVE_HOUSE = "RECEIVE_HOUSE";
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_BOOKING = 'RECEIVE_BOOKING';

export const receiveHouses = houses => ({
  type: RECEIVE_HOUSES,
  houses
});

export const receiveHouse = data => ({
  type: RECEIVE_HOUSE,
  data
}); //data: houses, reviews and users

export const receiveReview = review => ({
  type: RECEIVE_REVIEW,
  review
});

export const receiveBooking = booking => ({
  type: RECEIVE_BOOKING,
  booking
});

export const createReview = review => dispatch => (
  APIUtil.createReview(review).then(review => dispatch(receiveReview(review)))
);

export const createBooking = booking => dispatch => (
  APIUtil.createBooking(booking).then(booking => dispatch(receiveBooking(booking)))
);

export const fetchHouses = (filters) => dispatch => {
  // debugger
  return APIUtil.fetchHouses(filters).then(houses => dispatch(receiveHouses(houses)));
};

export const fetchHouse = id => dispatch => (
  APIUtil.fetchHouse(id).then(data => dispatch(receiveHouse(data)))
);

export const createHouse = house => dispatch => (
  APIUtil.createHouse(house).then(house => dispatch(receiveHouse(house)))
);
