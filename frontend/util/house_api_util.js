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

export const createBooking = booking => (
  $.ajax({
    method: 'POST',
    url: `api/bookings`,
    data: { booking }
  })
);

export const createHouse = house =>(
  $.ajax({
    method: 'POST',
    url: `api/houses`,
    data: { house }
  })
);
