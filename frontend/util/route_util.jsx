import React from 'react';
import { connect } from 'react-redux';
import { openModal } from '../actions/modal_actions';
import { Route, Redirect, withRouter } from 'react-router-dom';

const Auth = ({ component: Component, path, loggedIn, exact }) => (
  <Route path={path} exact={exact} render={(props) => (
      !loggedIn ? (
        <Component {...props} />
        ) : (
          <Redirect to="/" />
        )
    )} />
);

const Protected = ({ component: Component, path, loggedIn, exact, openModal }) => {
  return(
  <Route path={path} exact={exact} render={(props) => {
     if (loggedIn) {
       return <Component {...props} />;
      } else {
        openModal('login');
        return null;
      }
    }} />
  );
};

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.id)
});

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal))
});

export const AuthRoute = withRouter(connect(mapStateToProps, mapDispatchToProps)(Auth));
export const ProtectedRoute = withRouter(connect(mapStateToProps, mapDispatchToProps)(Protected));
