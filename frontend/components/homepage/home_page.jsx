import React from 'react';
import { Link } from 'react-router-dom';

class HomePage extends React.Component {
  render() {
    return (
    <div>
      <section className="hero mod-join">
          <div className="hero-content">
            <h1 className="hero-content-title">
              Stay with locals and Meet travelers
            </h1>
            <h2 className="hero-content-subtitle">
              Share authentic travel experience
            </h2>
        </div>
      </section>
      <section className='hero'>
        <div className="hero-content-cities">
          <h2 className="cities-title">Top Mountainsurfing Destinations</h2>
          <div className="destinations-europe">
            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Yosemite" src="http://trailmob.com/images/trails/5984/yosemite__large.jpg">
                </img>
              </figure>
            </Link>

            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Yellowstone" src="https://www.gregnorrell.com/wp-content/uploads/2015/11/YellowstoneVerticalPano.jpg">
                </img>
              </figure>
            </Link>
          </div>

          <div className="destinations-europe">
            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Plitvice Lake" src="https://www.balkanholidays.co.uk/files/images/msc/walking_holidays_plitvice-lakes.jpg">
                </img>
              </figure>
            </Link>

            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Grand Teton" src="http://4.bp.blogspot.com/-whbcHuiIdng/VbBLJ-nAUFI/AAAAAAAABiM/FQc1lfmXYbI/s1600/Grand%2BTeton-5987.JPG">
                </img>
              </figure>
            </Link>

            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Arizona" src="https://www.rei.com/adventures/assets/adventures/images/trip/gallery/northamerica/ara_02">
                </img>
              </figure>
            </Link>
          </div>

          <div className="destinations-europe">
            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Patagonia" src="https://www.rei.com/adventures/assets/adventures/images/trip/gallery/latinamerica/paf_03">
                </img>
              </figure>
            </Link>

            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Great Smoky" src="http://williambritten.com/wordpress/wp-content/uploads/2010/03/smoky-mountains-pictures-1000drips.jpg">
                </img>
              </figure>
            </Link>
          </div>


          <div className="destinations-europe">
            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="Nepal" src="https://i.pinimg.com/236x/34/a8/fd/34a8fd669bbdb7544eaf6f236d1a7163--gold-beautiful-places.jpg">
                </img>
              </figure>
            </Link>

            <Link to="/index">
              <figure className="yosemite">
                <img className="destination_img" alt="South Island" src="https://www.rei.com/adventures/assets/adventures/images/trip/gallery/pacific/nzs_05">
                </img>
              </figure>
            </Link>
          </div>
        </div>
      </section>
      
    </div>
    );
  }
}

export default HomePage;
