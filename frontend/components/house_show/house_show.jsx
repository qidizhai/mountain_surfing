import React from 'react';
import { Link, Route, withRouter } from 'react-router-dom';

import HouseMap from '../house_map/house_map';
import HouseDetail from './house_detail';
import ReviewFormContainer from './review_form_container';
import { ReviewLink } from '../../util/link_util';
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
      if (!this.props.house) return null;
      const { house, houseId, fetchHouse, reviews } = this.props;
      const houses = {
        [houseId]: house
       };
      return(
        <div className="single-house-show">
          <div className="single-house-map">
            <HouseMap
              house= {house}
              houses = {houses}
              houseId = {houseId}
              singleHouse = {true}
              fetchHouse = {fetchHouse}
            />
          </div>
          <div className="right-half">
            <HouseDetail house={house} reviews={reviews} />

           <Link to={`/houses/${houseId}/review`}>Leave a Review</Link>
           <ProtectedRoute
             path="/houses/:houseId/review"
             component={ReviewFormContainer}
            />
          </div>
        </div>
      );
    }
}

export default withRouter(HouseShow);
