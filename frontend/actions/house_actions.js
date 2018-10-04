import * as APIUtil from '../util/house_api_util';

export const RECEIVE_HOUSES = "RECEIVE_HOUSES";
export const RECEIVE_HOUSE = "RECEIVE_HOUSE";
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_BOOKING = 'RECEIVE_BOOKING';
export const RECEIVE_BOOKING_ERROR = 'RECEIVE_BOOKING_ERROR';
export const CLEAR_BOOKING_ERRORS = 'CLEAR_BOOKING_ERRORS';

export const receiveHouses = houses => ({
  type: RECEIVE_HOUSES,
  houses
});

export const clearBookingErrors = () => ({
  type: CLEAR_BOOKING_ERRORS,  
})

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

export const receiveError = errors => ({
  type: RECEIVE_BOOKING_ERROR,
  errors
})

export const createReview = review => dispatch => (
  APIUtil.createReview(review).then(review => dispatch(receiveReview(review)))
);

export const createBooking = booking => dispatch => (
  APIUtil.createBooking(booking).then(booking => dispatch(receiveBooking(booking)),
  err => (
    dispatch(receiveError(err.responseJSON)))
));

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
