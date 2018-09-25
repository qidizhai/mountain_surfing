import merge from 'lodash/merge';

import {
  RECEIVE_HOUSE,
  RECEIVE_BOOKING
} from '../actions/house_actions';

const BookingsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_HOUSE:  //reviews is from Jbuilder backend, data is { house, reviews }
      return merge({}, state, action.data.bookings); //state is review(from entities reducer) and action is houses
    case RECEIVE_BOOKING:
      return merge({}, state, { [action.booking.id]: action.booking });
    default:
      return state;
  }
};

export default BookingsReducer;
