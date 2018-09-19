import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props){
    super(props);
    this.state={
      rating: '5',
      body: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToBenchShow = this.navigateToBenchShow.bind(this);
  }

  navigateToBenchShow() {
    this.props.history.push(`/houses/${this.props.match.params.houseId}`);
  }

  handleSubmit(e) {
    e.preventDefault();
    const houseId = parseInt(this.props.match.params.houseId);
    const review = Object.assign({}, this.state, { house_id: houseId});
    this.props.createReview(review);
    this.navigateToBenchShow();
  }

  update(field){
    return e =>(
      this.setState({ [field]: e.target.value })
    );
  }

  render() {

    return (
      <div className="review-form">
        <div className="review-form-content">
          <form onSubmit={this.handleSubmit}>
            <label className="rating-title">Rating:</label>
            <input className="rating-container" type="number"
                   value={this.state.rating}
                   onChange={this.update("rating")}
                   min="1"
                   max="5"
                 />
            <br/>
            <textarea
              rows="10"
              value={this.state.body}
              placeholder="Please leave a review"
              onChange={this.update("body")}
             />
            <br/>
            <div className="submit-holder">
              <input className="submit-review" type="submit" />
              <button className="submit-review" onClick={this.navigateToBenchShow}>Cancel</button>
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default ReviewForm;
