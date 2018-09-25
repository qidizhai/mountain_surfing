import React from 'react';
import { Link } from 'react-router-dom';

class HomePage extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      className: "hero mod-join hiker",
      link: "https://www.lonelyplanet.com/travel-tips-and-articles/scaling-new-heights-magnificent-mountains-almost-anyone-can-conquer/40625c8c-8a11-5710-a052-1479d2755041",
      label: "Scaling new heights: magnificent mountains almost anyone can conquer"
    };
    this.update = this.update.bind(this);
  }

  componentDidMount() {
    this.intervalId = setTimeout(this.update, 5000);
  }

  componentWillUpdate(){
    this.intervalId = setTimeout(this.update, 5000);
  }

  update(){
    if (this.state.className === "hero mod-join hiker"){
        this.setState({
          className: "hero mod-join forest",
          link: "https://www.lonelyplanet.com/travel-tips-and-articles/go-for-the-glow-a-guide-to-mother-natures-light-shows/40625c8c-8a11-5710-a052-1479d27577cd",
          label: "Go for the glow: a guide to mother natures light shows"
        });
    } else if(this.state.className === "hero mod-join forest") {
      this.setState({
        className: "hero mod-join family",
        link: "https://www.nytimes.com/interactive/2018/travel/places-to-visit.html",
        label: "Best places to travel in 2018"
      });
    } else if (this.state.className === "hero mod-join family") {
        this.setState({
          className: "hero mod-join hiker",
          link: "https://www.lonelyplanet.com/travel-tips-and-articles/scaling-new-heights-magnificent-mountains-almost-anyone-can-conquer/40625c8c-8a11-5710-a052-1479d2755041",
          label: "Scaling new heights: magnificent mountains almost anyone can conquer"
      });
    }
  }

  render() {
    return (
    <div>
      <section className={this.state.className}>
        <div className="hero-content">
          <h4 className="articles">FEATURED ARTICLES</h4>
          <a className="link-edit" href={`${this.state.link}`}>{this.state.label}</a>
          <br/>
          <br/>
          <a className="read-more" href={`${this.state.link}`}>READ MORE >
          </a>
        </div>
      </section>
      <section className='hero'>
        <div className="hero-content-cities">
          <h2 className="cities-title">Top Mountainsurfing Destinations</h2>
          <div className="destinations-europe">
            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Yosemite" src="http://trailmob.com/images/trails/5984/yosemite__large.jpg">
                </img>
                <div className='middle'>
                   <div className="text">Yosemite</div>
                </div>
              </figure>
            </Link>

            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Yellowstone" src="https://www.gregnorrell.com/wp-content/uploads/2015/11/YellowstoneVerticalPano.jpg">
                </img>
                <div className='middle'>
                   <div className="text">Yellowstone</div>
                </div>
              </figure>
            </Link>
          </div>

          <div className="destinations-europe">
            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Plitvice Lake" src="https://www.balkanholidays.co.uk/files/images/msc/walking_holidays_plitvice-lakes.jpg">
                </img>
                <div className='middle'>
                   <div className="text">Plitivice Lake</div>
                </div>
              </figure>
            </Link>

            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Grand Teton" src="http://4.bp.blogspot.com/-whbcHuiIdng/VbBLJ-nAUFI/AAAAAAAABiM/FQc1lfmXYbI/s1600/Grand%2BTeton-5987.JPG">
                </img>
                <div className='middle'>
                   <div className="text">Grand Teton</div>
                </div>
              </figure>
            </Link>

            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Arizona" src="https://www.rei.com/adventures/assets/adventures/images/trip/gallery/northamerica/ara_02">
                </img>
                <div className='middle'>
                   <div className="text">Arizona</div>
                </div>
              </figure>
            </Link>
          </div>

          <div className="destinations-europe">
            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Patagonia" src="https://www.rei.com/adventures/assets/adventures/images/trip/gallery/latinamerica/paf_03">
                </img>
                <div className='middle'>
                   <div className="text">Patagonia</div>
                </div>
              </figure>
            </Link>

            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Great Smoky" src="http://williambritten.com/wordpress/wp-content/uploads/2010/03/smoky-mountains-pictures-1000drips.jpg">
                </img>
                <div className='middle'>
                   <div className="text">Great Smoky</div>
                </div>
              </figure>
            </Link>
          </div>


          <div className="destinations-europe">
            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="Nepal" src="https://i.pinimg.com/236x/34/a8/fd/34a8fd669bbdb7544eaf6f236d1a7163--gold-beautiful-places.jpg">
                </img>
                <div className='middle'>
                   <div className="text">Nepal</div>
                </div>
              </figure>
            </Link>

            <Link to="/houses">
              <figure className="yosemite">
                <img className="destination_img" alt="South Island" src="https://www.rei.com/adventures/assets/adventures/images/trip/gallery/pacific/nzs_05">
                </img>
                <div className='middle'>
                   <div className="text">South Island</div>
                </div>
              </figure>
            </Link>
          </div>
        </div>
      </section>
      <section className="plan-trips">
        <div className="trip-content">
          <h2 className="trip-title">Ready for your next adventures?</h2>
          <Link className="button-trip" to="/houses">Plan a trip</Link>
        </div>
      </section>
    </div>
    );
  }
}

export default HomePage;
