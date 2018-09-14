import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';
import { fetchHouses } from './actions/house_actions.js';

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser){
    const preloadedState = {
      session: { id: window.currentUser.id },
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.dispatch = store.dispatch;
  window.getState = store.getState;
  window.fetchHouses = fetchHouses;
  const bounds = {
  "northEast": {"lat": "2", "lng": "-2" },
  "southWest": {"lat": "1", "lng": "-3" }};

  //dispatch(fetchHouses(bounds)).then(console.log); //tested

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
