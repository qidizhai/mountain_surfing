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
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import Modal from './modal/modal';

const App = () => (
  <div>
    <Modal />
    <header className="header-edit">
      <Link to="/" className="header-link">
        <h1 class="title">Mountainsurfing</h1>
      </Link>
      <GreetingContainer />
    </header>

    <Switch>
      // <AuthRoute exact path="/login" component={LogInFormContainer} />
      // <AuthRoute exact path="/signup" component={SignUpFormContainer} />
    </Switch>
    <section className="hero mod-join">
        <div className="hero-content">
          <h1 className="hero-content-title">
            Stay with locals and Meet travels
          </h1>
          <h2 className="hero-content-subtitle">
            Share authentic travel experience
          </h2>
      </div>
    </section>
  </div>
);

export default App;
