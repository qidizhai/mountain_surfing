import { connect } from 'react-redux';
import { fetchHouse } from '../../actions/house_actions';
import { selectReviewsForHouse, selectHouse } from '../../reducers/selectors';
import { createBooking } from '../../actions/house_actions';
import HouseShow from './house_show';

const mapStateToProps = (state, ownProps) => {
  const houseId = parseInt(ownProps.match.params.houseId);
  const users = state.entities.users;
  let bookingStatus = 'PENDING';
  if (Object.keys(state.entities.bookings).length !== 0) {
    bookingStatus = state.entities.bookings[Object.keys(state.entities.bookings)[Object.keys(state.entities.bookings).length-1]].status;
  }
  const house = selectHouse(state.entities, houseId);
  const reviews = selectReviewsForHouse(state.entities, house);
  return {
    users,
    houseId,
    house,
    reviews,
    bookingStatus
  };
};


const mapDispatchToProps = dispatch => ({
  fetchHouse: id => dispatch(fetchHouse(id)),
  createBooking: booking => dispatch(createBooking(booking))
});

export default connect(mapStateToProps, mapDispatchToProps)(HouseShow);
