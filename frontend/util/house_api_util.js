export const fetchHouses = () => (
  $.ajax({
    method: 'GET',
    url: `api/houses`,
  })
);

export const fetchHouse = id => (
  $.ajax({
    method: 'GET',
    url: `api/houses/${id}`,
  })
);

export const createHouse = house =>(
  $.ajax({
    method: 'POST',
    url: `api/houses`,
    data: { house }
  })
);
