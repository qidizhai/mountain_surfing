import React from 'react';
import HouseIndex from './house_index';
import HouseMap from '../house_map/house_map';


class Search extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      lat: 37.7576171,
      lng: -122.5776844
    };
  }

  render(){
    return (
      <div>
        <section className="hero mod-join index">
          <div className="web-title">
            <h2 className="web-page-country">Find the perfect place to stay</h2>
            <h5 className="web-page-label">Hotels, apartments, hostels, villas and more</h5>
          </div>
        </section>
        <section className="welcome-info">
          <h2 className="welcome-title">Articles</h2>
          <a className="article-holder" href="https://www.lonelyplanet.com/travel-tips-and-articles/how-to-pick-a-green-hotel/40625c8c-8a11-5710-a052-1479d276378e">
            <div className="article-content">
              <h3 className="article-name">How to pick a green hotel</h3>
              <p>Finding a hotel with environmental initiatives has never been easier, but knowing which hotels are truly worthy of your eco-conscious buck isn’t quite…
              </p>
            </div>
            <img className="article-image" src="https://lonelyplanetwp.imgix.net/2015/06/Choose_a_green_hotel_Olakira_1-af87d6a284cf.jpg?w=110&h=160&fit=crop&q=50&auto=enhance&crop=entropy" />
          </a>
          <div className="article-border"></div>

          <a className="article-holder" href="https://www.lonelyplanet.com/travel-tips-and-articles/the-irresistible-rise-of-the-poshtel/40625c8c-8a11-5710-a052-1479d27609b4">
            <div className="article-content">
              <h3 className="article-name">The irresistible rise of the 'poshtel'</h3>
              <p>A ‘poshtel’ – otherwise known as an upscale or luxury hostel – combines the style and comfort of a boutique hotel with the price and sensibilities of …
              </p>
            </div>
            <img className="article-image" src="https://lonelyplanetwp.imgix.net/2015/05/generator.jpeg?w=110&h=160&fit=crop&q=50&auto=enhance&crop=entropy" />
          </a>
          <div className="article-border"></div>

            <a className="article-holder" href="https://www.lonelyplanet.com/travel-tips-and-articles/places-to-stay-that-will-blow-your-mind/40625c8c-8a11-5710-a052-1479d276ef2e">
              <div className="article-content">
                <h3 className="article-name">Places to stay that will blow your mind</h3>
                <p>You know that old adage ‘it’s about the journey not the destination’? Well, that just doesn’t apply here. Each and every one of these spectacular plac…
                </p>
              </div>
              <img className="article-image" src="https://lonelyplanetwp.imgix.net/2017/03/swissplane-da2a8af60673.jpg?w=110&h=160&fit=crop&q=50&auto=enhance&crop=entropy" />
            </a>
            <div className="article-border"></div>

        </section>
        <section>
          <h2 className="top-hosts">Popular hotel destinations</h2>
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

export default Search;
