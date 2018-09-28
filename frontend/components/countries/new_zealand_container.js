import { connect } from 'react-redux';
import { fetchHouses } from '../../actions/house_actions';
import { updateFilter } from '../../actions/filter_actions';
import NewZealand from './new_zealand';

const mapStateToProps = (state, ownProps) => ({
  houses: Object.keys(state.entities.houses).map(id => state.entities.houses[id]),
});

const mapDispatchToProps = dispatch => ({
  updateFilter: (filter,value) => dispatch(updateFilter(filter, value))
});

export default connect(mapStateToProps, mapDispatchToProps)(NewZealand);
