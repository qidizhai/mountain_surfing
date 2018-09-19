import React from 'react';

const Review = ({review}) => {
  if (!review) return null;
  const { rating, body } = review;
  return (
    <div>
      <ul>
        <li>Rating: {rating}</li>
        <li>{body}</li>
      </ul>
    </div>
  )
};

export default Review;
