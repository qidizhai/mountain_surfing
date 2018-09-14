import { combineReducers } from 'redux';

import users from './users_reducer';
import houses from './houses_reducer';

export default combineReducers({
  users,
  houses
});
