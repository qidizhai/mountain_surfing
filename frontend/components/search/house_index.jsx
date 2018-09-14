import React from 'react';
import HouseIndexItem from './house_index_item';

class HouseIndex extends React.Component {
  

  render(){
    return (
      <div>
        <section className="hero mod-join">
            <div className="hero-content">
              <h1 className="hero-content-title">
                Stay with locals and Meet travels
              </h1>
              <h2 className="hero-content-subtitle">
                Share authentic travel experience
              </h2>
          </div>
        </section>
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
