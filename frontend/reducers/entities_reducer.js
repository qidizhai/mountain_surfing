import { combineReducers } from 'redux';

import users from './users_reducer';
import houses from './houses_reducer';
import reviews from './reviews_reducer';

export default combineReducers({
  users,
  houses,
  reviews
});
