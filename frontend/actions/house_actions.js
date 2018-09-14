import * as APIUtil from '../util/house_api_util';

export const RECEIVE_HOUSES = "RECEIVE_HOUSES";
export const RECEIVE_HOUSE = "RECEIVE_HOUSE";

export const receiveHouses = houses => ({
  type: RECEIVE_HOUSES,
  houses
});

export const receiveHouse = house => ({
  type: RECEIVE_HOUSE,
  house
});

export const fetchHouses = (filters) => dispatch => (
  APIUtil.fetchHouses(filters).then(houses => dispatch(receiveHouses(houses)))
);

export const fetchHouse = id => dispatch => (
  APIUtil.fetchHouse(id).then(house => dispatch(receiveHouse(house)))
);

export const createHouse = house => dispatch => (
  APIUtil.createHouse(house).then(house => dispatch(receiveHouse(house)))
);
