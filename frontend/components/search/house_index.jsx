import React from 'react';
import HouseIndexItem from './house_index_item';

class HouseIndex extends React.Component {


  render(){
    return (
      <div>
        <ul>{
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
