import React from 'react';
import { withRouter, Link } from 'react-router-dom';

import HouseShowContainer from '../house_show/house_show_container';

class IndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    const houseId = this.props.house.id;
    this.props.history.push(`/houses/${houseId}`);
  }

  render(){
    const houseId = this.props.house.id;
    return (

      <nav className="house-index-item" onClick={this.handleClick} >
        <div className="house-image-container">
          <img className="house-image" src={this.props.house.pic_url}/>
        </div>
        <div className="index-item-info">
          <span className="index-item-category">Description:</span>
          <span className="index-item-copy">{this.props.house.description}</span>
        </div>
      </nav>

    );
  }
}

export default withRouter(IndexItem);
