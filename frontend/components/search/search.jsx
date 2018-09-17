import React from 'react';
import HouseIndex from './house_index';
import HouseMap from '../house_map/house_map';

// const Search = (props) => (
//   <div>
//     <HouseMap houses={props.houses} updateFilter={props.updateFilter}/>
//     <HouseIndex houses={props.houses}/>
//   </div>
// );
class Search extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.state = {
      location: "San Francisco"
    };
  }

  handleClick(e){
    e.preventDefault();
    this.setState({
      location: e.target.value
    });
  }

  render(){
    return (
      <div>
        <input id="pac-input" type="text" placeholder="Search Cities" />
        <HouseMap houses={this.props.houses} updateFilter={this.props.updateFilter} />
        <HouseIndex houses={this.props.houses}/>
      </div>
    );
  }

}

export default Search;
