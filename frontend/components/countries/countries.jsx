import React from 'react';
import HouseMap from '../house_map/house_map';
import HouseIndex from '../search/house_index';
import { withRouter } from 'react-router-dom';

class NewZealand extends React.Component {
  constructor(props){
    super(props);
    //this.newZealandState = this.newZealandState.bind(this);
    if(props.match.path === "/houses/new_zealand"){
        this.newZealandState();
    } else if (props.match.path === "/houses/yosemite"){
      this.yosemiteState();
    } else if (props.match.path === "/houses/yellowstone"){
      this.yellowStoneState();
    } else if (props.match.path === "/houses/arizona"){
      this.arizonaState();
    } else if (props.match.path === "/houses/great_smoky"){
      this.smokyState();
    } else if (props.match.path === "/houses/patagonia"){
      this.patagoniaState();
    } else if (props.match.path === "/houses/plitvice_lake"){
      this.lakeState();
    } else if (props.match.path === "/houses/nepal"){
      this.nepalState();
    } else if (props.match.path === "/houses/grand_teton"){
      this.grandTetonState();
    }
  }

  newZealandState(){
    return (
    this.state = {
      region: "AUSTRALIA&PACIFIC",
      className: "hero mod-join evening",
      place: "New Zealand",
      label: "is soft evening night",
      lat: -43.513046,
      lng: 172.4589917,
      video_url: "https://www.youtube.com/embed/7eEZ2jRzQQQ",
      intro: "Get ready for mammoth national parks, dynamic Māori culture, and world-class surfing and skiing. New Zealand can be mellow or action-packed, but it's always epic."
     }
    );
  }

  yosemiteState(){
    return (
    this.state = {
      region: "USA",
      className: "hero mod-join yosemite",
      place: "Yosemite National Park",
      label: "is awe-inspiring nature",
      lat: 37.8529772,
      lng: -119.831296,
      video_url: "https://www.youtube.com/embed/9fJEFi3ccwI",
      intro: "The jaw-dropping head-turner of America’s national parks, and a Unesco World Heritage site, Yosemite (yo-sem-it-ee) garners the devotion of all who enter. From the waterfall-striped granite walls buttressing emerald-green Yosemite Valley to the skyscraping giant sequoias catapulting into the air at Mariposa Grove, the place inspires a sense of awe and reverence – four million visitors wend their way to the country’s third-oldest national park annually. But lift your eyes above the crowds and you’ll feel your heart instantly moved by unrivaled splendors: the haughty profile of Half Dome, the hulking presence of El Capitan, the drenching mists of Yosemite Falls, the gemstone lakes of the high country’s subalpine wilderness and Hetch Hetchy’s pristine pathways."
     }
    );
  }

  yellowStoneState(){
    return (
    this.state = {
      region: "USA",
      className: "hero mod-join yellowstone",
      place: "Yellow Stone National Park",
      label: "is wild encounters",
      lat: 44.4279828,
      lng: -110.597209,
      video_url: "https://www.youtube.com/embed/2QtdEq2tsh8",
      intro: "The sights of Yellowstone are so fantastic that when the first white man to visit described what was there, he was roundly criticized as delirious or possibly a liar. It wasn’t until the world saw the paintings of Thomas Moran from the Hayden Expedition some 70 years later that people began to believe such a wondrous place could exist."
     }
    );
  }

  arizonaState(){
    return (
    this.state = {
      region: "USA",
      className: "hero mod-join yellowstone",
      place: "Arizona",
      label: "is roadtrips into Wild West",
      lat: 33.6050991,
      lng: -112.4052392,
      video_url: "https://www.youtube.com/embed/ToeQYQJyPnQ",
      intro: "Arizona is made for road trips. Yes, the state has its showstoppers – Monument Valley, the Grand Canyon, Cathedral Rock – but you'll remember the long, romantic miles under endless skies for as long as you do the icons in between. Each drive reveals a little more of the state's soul: for a dose of mom-and-pop friendliness, follow Route 66 into Flagstaff; to understand the sheer will of Arizona's mining barons, take a twisting drive through rugged Jerome; and American Indian history becomes contemporary as you drive past mesa-top Hopi villages dating back 1000 years."
     }
    );
  }

  smokyState(){
    return (
    this.state = {
      region: "USA",
      className: "hero mod-join smoky",
      place: "Great Smoky National Park",
      label: "",
      lat: 35.6391039,
      lng: -83.8137667,
      video_url: "https://www.youtube.com/embed/poyWuEA6HT0",
      intro: "Get back to nature among mist-shrouded peaks, shimmering waterfalls and lush forests in the great American wilderness."
     }
    );
  }

  patagoniaState(){
    return (
    this.state = {
      region: "CHILE",
      className: "hero mod-join patagonia",
      place: "Patagonia",
      label: "is majestic glaciers and moutains",
      lat: -48.9425911,
      lng: -74.7876793,
      video_url: "https://www.youtube.com/embed/nD_dFyfOXIo",
      intro: "On South America’s southern frontier, nature grows wild, barren and beautiful. Spaces are large, as are the silences that fill them. For the newly arrived, such emptiness can be as impressive as the sight of Patagonia’s jagged peaks, pristine rivers and dusty backwater oases. In its enormous scale, Patagonia offers a wealth of potential experiences and landscapes."
     }
    );
  }

  lakeState(){
    return (
    this.state = {
      region: "CROATIA",
      className: "hero mod-join lake",
      place: "Plitvice Lake National Park",
      label: "is verdant scenery and cascading waters",
      lat: 44.8654004,
      lng: 15.5798232,
      video_url: "https://www.youtube.com/embed/TNKyJKXnWmI",
      intro: "By far Croatia's top natural attraction and the absolute highlight of Croatia's Adriatic hinterland, this glorious expanse of forested hills and turquoise lakes is exquisitely scenic – so much so that in 1979 Unesco proclaimed it a World Heritage Site. The name is, however, slightly misleading, as it's not so much the lakes that are the attraction here but the hundreds of waterfalls that link them. It's as though Croatia decided to gather all its waterfalls in one place and charge admission to view them."
     }
    );
  }

  nepalState(){
    return (
    this.state = {
      region: "ASIA",
      className: "hero mod-join nepal",
      place: "Nepal",
      label: "is a curtain of fluttering prayer flags",
      lat: 44.8654004,
      lng: 15.5798232,
      video_url: "https://www.youtube.com/embed/zbziahTLPAY",
      intro: "A trekkers\' paradise, Nepal combines Himalayan views, golden temples, charming hill villages and jungle wildlife watching to offer one of the world's great travel destinations."
     }
    );
  }

  grandTetonState(){
    return (
    this.state = {
      region: "USA",
      className: "hero mod-join grandTeton",
      place: "Grand Teton National Park",
      label: "is a sight to behold",
      lat: 43.8078298,
      lng: -110.968707,
      video_url: "https://www.youtube.com/embed/NCTd1IHChug",
      intro: "Awesome in their grandeur, the Tetons have captivated the imagination from the moment humans laid eyes on them. This wilderness is home to bear, moose and elk in number, and played a fundamental role in the history of American alpine climbing."
     }
    );
  }

  render(){
    return (
     <div>
      <section className={this.state.className}>
        <div className="web-title">
          <h4 className="region">{this.state.region}</h4>
          <h2 className="web-page-country">{this.state.place}</h2>
          <h5 className="web-page-label">{this.state.label}</h5>
        </div>
      </section>
      <section className="welcome-info">
        <h2 className="welcome-title">Welcome to {this.state.place}</h2>
        <p className="welcome-intro">{this.state.intro}</p>
        <iframe width="800" height="400" src={this.state.video_url} frameBorder="0" allow="autoplay; encrypted-media" allowFullScreen></iframe>
      </section>

      <section>
        <h2 className="top-hosts">Top hosts in {this.state.place}</h2>
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

export default withRouter(NewZealand);
