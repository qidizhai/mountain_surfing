import React from 'react';
import { withRouter } from 'react-router-dom';

class IndexItem extends React.Component {
  render(){
    return (
      <li className="house-index-item">
        <img className="house-image" src={this.props.house.pic_url}/>
        <div className="index-item-info">
          <span className="index-item-category">Description:</span>
          <span className="index-item-copy">{this.props.house.description}</span>
        </div>
      </li>
    );
  }
}

export default withRouter(IndexItem);
