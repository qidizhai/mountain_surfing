import React from 'react';
import HouseMap from '../house_map/house_map';
import HouseIndex from '../search/house_index';

class NewZealand extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      className: "hero mod-join evening",
      link: "https://lonelyplanetimages.imgix.net/mastheads/95318935.jpg?h=768&sharp=10&vib=20",
      label: "is soft evening night",
      lat: -43.513046,
      lng: 172.4589917
    };
    this.update = this.update.bind(this);
  }

  update(){
    if (this.state.className === "hero mod-join evening"){
        this.setState({
          className: "hero mod-join glacial",
          label: "is crusing through glacial fjords"
        });
    } else if(this.state.className === "hero mod-join glacial") {
      this.setState({
        className: "hero mod-join rock",
        label: "is ancient rock formation"
      });
    } else if (this.state.className === "hero mod-join rock") {
        this.setState({
          className: "hero mod-join evening",
          label: "is soft evening night"
      });
    }
  }
  render(){
    debugger
    return (
     <div>
      <section className={this.state.className}>
        <div className="web-title">
          <h4 className="region">AUSTRALIA&PACIFIC</h4>
          <h2 className="web-page-country">New Zealand</h2>
          <h5 className="web-page-label">{this.state.label}</h5>
        </div>
      </section>
      <section className="welcome-info">
        <h2 className="welcome-title">Welcome to New Zealand</h2>
        <p className="welcome-intro">Get ready for mammoth national parks, dynamic Māori culture, and world-class surfing and skiing. New Zealand can be mellow or action-packed, but it's always epic.</p>
        <iframe width="800" height="400" src="https://www.youtube.com/embed/7eEZ2jRzQQQ" frameBorder="0" allow="autoplay; encrypted-media" allowFullScreen></iframe>
      </section>

      <section>
        <h2 className="top-hosts">Top hosts in New Zealand</h2>
          <input id="pac-input" type="text" placeholder="Search Cities" />
          <div className="main-index">
            <HouseMap houses={this.props.houses} updateFilter={this.props.updateFilter} lat={this.state.lat} lng={this.state.lng}/>
            <HouseIndex houses={this.props.houses}/>
          </div>
      </section>
    </div>
    );
  }
}

export default NewZealand;
