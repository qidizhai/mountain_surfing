import { connect } from 'react-redux';
import { fetchHouses } from '../../actions/house_actions';
import Search from './search';

const mapStateToProps = state => ({
  houses: Object.keys(state.entities.houses).map(id => state.entities.houses[id])
});

const mapDispatchToProps = dispatch => ({
  fetchHouses: () => dispatch(fetchHouses())
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);
