import merge from 'lodash/merge';

import {
  RECEIVE_HOUSE,
  RECEIVE_REVIEW
} from '../actions/house_actions';

const ReviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_HOUSE:  //reviews is from Jbuilder backend, data is { house, reviews }
      return merge({}, state, action.data.reviews); //state is review(from entities reducer) and action is houses
    case RECEIVE_REVIEW:
      return merge({}, state, { [action.review.id]: action.review });
    default:
      return state;
  }
};

export default ReviewsReducer;
