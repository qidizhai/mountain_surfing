import React from 'react';
import { withRouter } from 'react-router-dom';
import Booking from '../booking/booking_form';

import HouseMap from '../house_map/house_map';
import HouseDetail from './house_detail';
import ReviewFormContainer from './review_form_container';
import { ProtectedRoute } from '../../util/route_util';

class HouseShow extends React.Component{

  componentDidMount(){

    this.props.fetchHouse(this.props.match.params.houseId);
  }

  componentWillReceiveProps(nextProps){
    if (this.props.houseId !== parseInt(nextProps.match.params.houseId))
      this.props.fetchHouse(nextProps.match.params.houseId);
  }

   render(){

      if (!this.props.house.id) return null;
      const { users, house, houseId, fetchHouse, reviews } = this.props;
      const houses = {
        [houseId]: house
       };
      return(
        <div className="single-house-show">
          <div className="show-page-container">
            <img className="house-image1" src={house.pic_url}/>
          </div>
          <div className="house-info">
            <div className="all-house-info">
                <HouseDetail house={house} reviews={reviews} users={users} houseId={houseId}/>
                 <ProtectedRoute
                   path="/houses/:houseId/review"
                   component={ReviewFormContainer}
                 />
            </div>
            <div className="map-book">
                <h2 className="map-title">The neighborhood</h2>
                <div className="single-house-map">
                  <HouseMap
                    house= {house}
                    houses = {houses}
                    houseId = {houseId}
                    singleHouse = {true}
                    fetchHouse = {fetchHouse}
                  />
                </div>
                <Booking house={house} createBooking={this.props.createBooking} bookingStatus={this.props.bookingStatus}/>
            </div>
          </div>
        </div>
      );
    }
}

export default withRouter(HouseShow);
