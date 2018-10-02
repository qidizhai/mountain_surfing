import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import SearchContainer from './search/search_container';
import HouseShowContainer from './house_show/house_show_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import HomePage from './homepage/home_page';
import Modal from './modal/modal';
import Countries from './countries/countries_container';

const App = () => (
  <div className="whole-page">
    <Modal />
    <header className="header-edit">
      <Link to="/" className="header-link">
        <h1 className="title">Mountainsurfing</h1>
      </Link>

      <GreetingContainer />
    </header>

    <Switch>
      <Route exact path="/" component={HomePage} />

      <Route exact path="/houses" component={SearchContainer} />
      <Route exact path="/houses/new_zealand" component={Countries} />
      <Route exact path="/houses/yellowstone" component={Countries} />
      <Route exact path="/houses/nepal" component={Countries} />
      <Route exact path="/houses/arizona" component={Countries} />
      <Route exact path="/houses/plitvice_lake" component={Countries} />
      <Route exact path="/houses/grand_teton" component={Countries} />
      <Route exact path="/houses/yosemite" component={Countries} />
      <Route exact path="/houses/patagonia" component={Countries} />
      <Route exact path="/houses/great_smoky" component={Countries} />
      <Route path="/houses/:houseId" component={HouseShowContainer} />
    </Switch>
  </div>
);

export default App;
