import { fetchHouses } from './house_actions';

export const UPDATE_FILTER = "UPDATE_FILTER";

export const changeFilter = (filter, value) => ({
  type: UPDATE_FILTER,
  filter,
  value
});

export const updateFilter = (filter, value) => {
  return (dispatch, getState) => {
    dispatch(changeFilter(filter, value));
    return fetchHouses(getState().ui.filters)(dispatch);
  }
};
