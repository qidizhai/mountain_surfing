export const fetchHouses = house => (
  $.ajax({
    method: 'GET',
    url: `api/houses`,
    data: house
  })
);

export const fetchHouse = id => (
  $.ajax({
    method: 'GET',
    url: `api/houses/${id}`,
  })
);

export const createReview = review => (
  $.ajax({
    method: 'POST',
    url: `api/reviews`,
    data: { review }
  })
);

export const createHouse = house =>(
  $.ajax({
    method: 'POST',
    url: `api/houses`,
    data: { house }
  })
);
