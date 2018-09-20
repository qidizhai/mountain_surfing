import React from 'react';

class Booking extends React.Component {
  constructor(props){
    super(props);
    this.state={
      start_date: "Check in",
      end_date: "Check out",
      num_guest: 1,
      book: "Request to book"
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.setState({
      start_date: "Check in",
      end_date: "Check out",
      num_guest: 1,
      book: "Request has been sent"
    });
  }

  update(field){
    return e => {
      this.setState({
        [field]: e.target.value
      });
    };
  }

  render(){
    return (
      <div className="booking-form-container">
        <div className="booking-wrap">
          <p className="pernight-booking-font"><span className="price-booking">${this.props.price}</span> per night</p>
          <div className="add-bar"></div>
          <form className="booking-sub-container" onSubmit={this.handleSubmit}>
            <h5>Dates</h5>
              <div className="date-holder">
                <input type="date" value={this.state.start_date} onChange={this.update("start_date")}/>
                <div className="symbol">→</div>
                <input type="date" value={this.state.end_date} onChange={this.update("end_date")} />
              </div>
            <br/>
            <button className="book-submit">
              {this.state.book}
            </button>
          </form>
          <h5 className="note-booking">You won't be charged yet</h5>
          <div className="add-bar"></div>
          <div className="bottom-booking">
            <div>
              <p className="view-booking">This home is on people's minds.</p>
              <p>It's been viewed 500+ times in the pastweek.</p>
            </div>
            <div className="lightbulb">💡</div>
          </div>
        </div>
      </div>
    );
  }

}

export default Booking;
