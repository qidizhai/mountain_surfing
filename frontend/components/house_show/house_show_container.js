import { connect } from 'react-redux';
import { fetchHouse } from '../../actions/house_actions';
import { selectReviewsForHouse, selectHouse } from '../../reducers/selectors';
import HouseShow from './house_show';

const mapStateToProps = (state, ownProps) => {
  const houseId = parseInt(ownProps.match.params.houseId);
  const house = selectHouse(state.entities, houseId);
  const reviews = selectReviewsForHouse(state.entities, house)
  return {
    houseId,
    house,
    reviews
  };
}


const mapDispatchToProps = dispatch => ({
  fetchHouse: id => dispatch(fetchHouse(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(HouseShow);
