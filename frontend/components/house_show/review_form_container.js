import { connect } from 'react-redux';
import { createReview } from '../../actions/house_actions';
import ReviewForm from './review_form';
import { withRouter } from 'react-router-dom';



const mapDispatchToProps = dispatch => ({
  createReview: review => dispatch(createReview(review))
});

export default withRouter(connect(null, mapDispatchToProps)(ReviewForm));
