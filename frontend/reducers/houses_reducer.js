import { RECEIVE_REVIEW, RECEIVE_HOUSES, RECEIVE_HOUSE } from '../actions/house_actions';
import merge from 'lodash/merge';

const housesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_HOUSES:
      return action.houses;
    case RECEIVE_HOUSE:
      return merge({}, state, {[action.data.house.id]: action.data.house});
    case RECEIVE_REVIEW:
      const newState = merge({}, state);
      newState[action.review.house_id].reviewIds.push(action.review.id); //houseIds from Jbuilder api house/index
      return newState;
    default:
      return state;
  }
};

export default housesReducer;
