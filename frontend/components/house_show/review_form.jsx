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
        <form onSubmit={this.handleSubmit}>
          <label>Rating:</label>
          <br/>
          <input type="number"
                 value={this.state.rating}
                 onChange={this.update("rating")}
               />
          <br/>
          <label>Comment:</label>
          <br/>
          <textarea
            cols="30"
            rows="10"
            value={this.state.body}
            onChange={this.update("body")}
           />
          <br/>
          <input type="submit" />
        </form>
        <button onClick={this.navigateToBenchShow}>Cancel</button>
      </div>
    );
  }
}

export default ReviewForm;
