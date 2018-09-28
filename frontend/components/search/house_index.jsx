import React from 'react';
import HouseIndexItem from './house_index_item';

class HouseIndex extends React.Component {
  render(){
    if(this.props.houses.length === 0) return null;
    return (
      <div className="houses">
        <ul className="all-houses">{
            this.props.houses.map(house => (
              <HouseIndexItem key={house.id}
                house = {house}/>
            )
            )
          }</ul>
      </div>
    );
  }
}

export default HouseIndex;
