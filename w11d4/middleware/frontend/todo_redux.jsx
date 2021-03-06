import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  // store = applyMiddleware(store, addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

// const applyMiddleware = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach (middleware => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, {dispatch});
// };