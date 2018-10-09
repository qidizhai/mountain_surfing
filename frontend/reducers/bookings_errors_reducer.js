import { RECEIVE_BOOKING_ERROR, CLEAR_BOOKING_ERRORS } from '../actions/house_actions';

export default (state=[], action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_BOOKING_ERROR:
      return action.errors;
    case CLEAR_BOOKING_ERRORS:
      return ["It is successfully booked"];
    default:
      return state;
  }
};
