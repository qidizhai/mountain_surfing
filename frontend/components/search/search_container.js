import { connect } from 'react-redux';
import { fetchHouses } from '../../actions/house_actions';
import { updateFilter } from '../../actions/filter_actions';
import Search from './search';

const mapStateToProps = state => ({
  houses: Object.keys(state.entities.houses).map(id => state.entities.houses[id])
});

const mapDispatchToProps = dispatch => ({
  //fetchHouses: () => dispatch(fetchHouses())
  updateFilter: (filter,value) => dispatch(updateFilter(filter, value))
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);
