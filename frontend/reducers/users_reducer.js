import merge from 'lodash/merge';
import { RECEIVE_HOUSE } from '../actions/house_actions';

import { RECEIVE_CURRENT_USER } from '../actions/session_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, { [action.currentUser.id]: action.currentUser });
    case RECEIVE_HOUSE:
      return merge({}, state, action.data.users);
    default:
      return state;
  }
};

export default usersReducer;
