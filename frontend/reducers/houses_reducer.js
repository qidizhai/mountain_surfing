import { RECEIVE_HOUSES, RECEIVE_HOUSE } from '../actions/house_actions';

const housesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_HOUSES:
      return action.houses;
    case RECEIVE_HOUSE:
      return merge({}, state, {[action.house.id]: action.house});
    default:
      return state;
  }
};

export default housesReducer;
