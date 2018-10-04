import { combineReducers } from 'redux';

import session from './session_errors_reducer';
import booking from './bookings_errors_reducer';

export default combineReducers({
  session,
  booking
});
