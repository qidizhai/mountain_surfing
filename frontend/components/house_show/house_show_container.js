import { connect } from 'react-redux';
import { fetchHouse } from '../../actions/house_actions';
import HouseShow from './house_show';

const mapStateToProps = (state, ownProps) => {
  const houseId = parseInt(ownProps.match.params.houseId);
  const house = state.entities.houses[houseId];
  return {
    houseId,
    house
  };
}

const mapDispatchToProps = dispatch => ({
  fetchHouse: id => dispatch(fetchHouse(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(HouseShow);
