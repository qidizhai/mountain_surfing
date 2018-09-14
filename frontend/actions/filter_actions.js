import { fetchHouses } from './house_actions';

export const UPDATE_BOUNDS = "UPDATE_BOUNDS";

export const updateFilter = bounds => ({
  type: UPDATE_BOUNDS,
  bounds
});

export const updateBounds = bounds => (dispatch, getState) => (
  fetchHouses(getState().ui.filters).then(bounds => dispatch(updateFilter(bounds)))
);
