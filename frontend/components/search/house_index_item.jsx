import React from 'react';
import { withRouter } from 'react-router-dom';

class IndexItem extends React.Component {
  render(){
    return (
      <div className="house-index-item">
        <div className="index-item-info">
          <span className="index-item-category">Description:</span>
          <span className="index-item-copy">{this.props.house.description}</span>
        </div>
        <img src={this.props.house.pic_url}/>
      </div>
    );
  }
}

export default withRouter(IndexItem);
